---
title: "Reduce missing subscriptions and notifications for Outlook resources (preview)"
description: "Outlook may suspend delivery of change notifications due to security events such as user's password reset. Special lifecycle events - `subscriptionRemoved` and `missed` - need to be handled to ensure uninterrupted delivery of notifications."
author: "piotrci"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Reduce missing subscriptions and notifications for Outlook resources (preview) 

Apps subscribing to notifications for Outlook resources may get their subscriptions removed and miss some notifications. Apps should implement logic to detect and recover from the loss, and resume a continuous notification flow.

Certain events in Outlook can cause a subscription to be removed. These events include:

- User's password has been reset
- User's device is out of compliance
-	User's account has been revoked

When such an event happens, Outlook sends a special lifecycle notification, `subscriptionRemoved`.

Outlook also sends another lifecycle notification, `missed`, if a notification cannot be delivered to an app.

An app subscribing to notifications for Outlook resources, such as **message** and **event**, should listen to the `subscriptionRemoved` and `missed` signals:

- Upon receiving a `subscriptionRemoved` notification, the app should recreate the subscription in order to maintain a continuous flow.
- On receiving a `missed` notification, the app should resynchronize resource data using Microsoft Graph.

To receive lifecycle notifications, you can use the existing **notificationUrl** endpoint that already receives resource notifications, or you can register a separate **lifecycleNotificationUrl** to receive `subscriptionRemoved` and `missed` notifications in a separate endpoint.

## Creating a subscription

When creating a subscription, you can specify a separate notification endpoint using the **lifecycleNotificationUrl** property. If you specify the endpoint, all current and future types of lifecycle notifications will be delivered there. Otherwise, `subscriptionRemoved` and `missed` notifications will be delivered to the existing **notificationUrl** for all existing subscriptions.

> **Note:** At the moment, the **lifecycleNotificationUrl** property can only be set or read using the `beta` version of Microsoft Graph APIs. However, subscriptions created using `beta` are stored in the same production environment as `v1.0` so you can implement the new Outlook flow described here in addition to your regular usage of `v1.0` with other subscriptions.

### Subscription request example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/users/{id}/messages",
  "expirationDateTime": "2019-03-20T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```
 
> **Important:** Use the same hostname for both notifications URLs. 

> **Note:** You need to validate both notification endpoints as described in [the generic notification article](webhooks.md#managing-subscriptions).
If you choose to use the same URL for both endpoints you will receive and respond to two validation requests.

> **Note:** You cannot update (`PATCH`) the existing subscriptions to add the **lifecycleNotificationUrl** property. You should remove such existing subscriptions, and create new subscriptions and specify the **lifecycleNotificationUrl** property. Existing subscriptions without **lifecycleNotificationUrl** property will receive the `subscriptionRemoved` and `missed` notifications via the **notificationUrl**. 

## Responding to subscriptionRemoved notifications

The `subscriptionRemoved` notification informs you that a subscription has been removed and should be recreated, if you want to continue receiving notifications. 

You can create a long-lived subscription (e.g. 3 days), and resource data notifications will start flowing to the **notificationUrl**. However, the conditions of access to the resource data may change over time. For example, an event in the Outlook service may occur that requires the app to re-authenticate the user. In such a case, the flow looks as follows:

1. Outlook detects that a subscription needs to be removed from Microsoft Graph.
    1. There is no set cadence for these events. They may occur frequently for some resources, and almost never for others.

2. Microsoft Graph sends a `subscriptionRemoved` notification to the **lifecycleNotificationUrl** (if specified), or the **notificationUrl**.  

3. You can respond to this notification by creating a new subscription for the same resource. To do this, you need to present a valid access token; in some cases this means the app needs to re-authenticate the user to obtain a new valid access token.

4. If you successfully create a new subscription, resource notifications will start flowing again. However, if you fail (for example, the app could not obtain a valid access token), resource notifications will not be sent.

5. After creating the new subscription, you can sync the resource data to identify any missing changes.

### subscriptionRemoved notification example

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "tenantId": "<tenant_guid>",
      "clientState":"<secretClientState>",
      "lifecycleEvent": "subscriptionRemoved"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "subscriptionRemoved"` field designates this notification as related to subscription removal. Other types of lifecycle notifications are also possible, and new ones will be introduced in the future.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change.
- Similar to resource notifications, lifecycle notifications may be batched together (in the **value** array), each with a possibly different **lifecycleEvent** value. Process each notification in the batch accordingly.

### Actions to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
2. [Validate](webhooks.md#notifications) the authenticity of the notification.
3. Ensure the app has a valid access token to take the next step. 
> **Note:** If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) they will handle this for you by either reusing a valid cached token, or obtaining a new token, including asking the user to login again (e.g. with a new password). Note that obtaining a new token may fail, since the conditions of access may have changed, and the caller may no longer be allowed access to the resource data.

4. Create a new subscription using the standard process described [here](webhooks.md#subscription-request-example).

> **Note:** This action may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. It may be necessary for the app to obtain a new access token from the user to successfully reauthorize a subscription. You may retry these actions later, at any time, for example when the conditions of access have change. Any resource changes in the time period from when the lifecycle notification was sent, to when the app re-creates the subscription successfully, will be lost. The app will need to fetch those changes on its own.

5. After creating the new subscription, sync any missing resource data from the last known time you received a notification for this resource; for example: `GET https://graph.microsoft.com/v1.0/users/{id}/messages?$filter=createdDateTime+ge+{LastTimeNotificationWasReceived}`

## Responding to missed notifications

These signals inform you that some notifications may have not been delivered. You should decide if you ignore or handle these signals.

### Notification example

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "tenantId": "<tenant_guid>",
      "clientState":"<secretClientState>",
      "lifecycleEvent": "missed"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "missed"` field designates this as a signal about missed notifications. Other types of lifecycle notifications are also possible, and new ones will be introduced in the future.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change
- Similar to resource notifications, lifecycle notifications may be batched together (in the **value** array), each with a possibly different **lifecycleEvent** value. Process each notification in the batch accordingly.

### Actions to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
    - If you ignore these, signals, do nothing else. Otherwise:
2. [Validate](webhooks.md#notifications) the authenticity of the notification.
3. Perform a full data resync of the resource to identify the changes that were not delivered as notifications. 


## Future-proof the code handling lifecycle notifications

In the future Microsoft Graph will add more types of subscription lifecycle notifications. They will be posted to the same endpoint: **lifecycleNotificationUrl**, but they will have a different value under **lifecycleEvent** and may contain a slightly different schema and properties, specific to the scenario for which they will be issued.

You should implement your code in a future-proof way so it does not break when Microsoft Graph introduces new types of lifecycle notifications. We recommend the following approach:

1. Explicitly identify each notification as an event that you support, using the **lifecycleEvent** property. For example, look for the `"lifecycleEvent": "subscriptionRemoved"` property to identify a specific event, and handle it.

2. Watch for announcements of notifications for new scenarions, as there may be more types of lifecycle notifications in the future.

3. In your app, ignore any lifecycle events that the app does not recognize, and log them to gain awareness.

4. At your discretion, look up the related documentation for new lifecycle notifications and implement support for them as appropriate.

## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
- [Delete subscription](/graph/api/subscription-delete?view=graph-rest-1.0)
- [Update subscription](/graph/api/subscription-update?view=graph-rest-1.0)
