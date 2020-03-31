---
title: "Set up notifications for changes in user data"
description: "The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes."
author: "baywet"
ms.prod: "non-product-specific"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Set up notifications for changes in user data

The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates its cache and views, and so on.


> [!VIDEO https://www.youtube-nocookie.com/embed/rC1bunenaq4]
 
> [!div class="nextstepaction"]
> [Build a webhook app with .NET Core](/graph/tutorials/change-notifications)

By default, change notifications do not contain resource data, other than the `id`. If the app requires resource data, it can make calls to Microsoft Graph APIs to get the full resource. This article uses the **user** resource as an example for working with notifications.

An app can also subscribe to change notifications that include resource data, to avoid having to make additonal API calls to access the data. Such apps will need to implement extra code to handle the requirements of such notifications, specifically: responding to subscription lifecycle notifications, validating the authenticity of notifications, and decrypting the resource data. More resource types will support this type of notifications in the future. For details about how to work with these notificatios, see [Set up change notifications that include resource data (preview)](webhooks-with-resource-data.md).

## Supported resources

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

- Outlook [message][]
- Outlook [event][]
- Outlook personal [contact][]
- [user][]
- [group][]
- Office 365 group [conversation][]
- Content within the hierarchy of _any folder_ [driveItem][] on a user's personal OneDrive
- Content within the hierarchy of the _root folder_ [driveItem][] on OneDrive for Business
- Security [alert][]
- Teams [callRecord][] (preview)

You can create a subscription to a specific Outlook folder such as the Inbox:
`me/mailFolders('inbox')/messages`

Or to a top-level resource:
`me/messages`, `me/contacts`, `me/events`, `users`, or `groups`

Or to a specific resource instance:
`users/{id}`, `groups/{id}`, `groups/{id}/conversations`

Or to any folder in a user's personal OneDrive:
`/drives/{id}/root`
`/drives/{id}/root/subfolder`

Or to the root folder of a SharePoint/OneDrive for Business drive:
`/drive/root`

Or to a new [Security API](security-concept-overview.md) alert:
`/security/alerts?$filter=status eq 'newAlert'`,
`/security/alerts?$filter=vendorInformation/provider eq 'ASC'`

### Azure AD resource limitations

Certain limits apply to Azure AD based resources (users, groups) and will generate errors when exceeded:

> **Note**: These limits do not apply to resources from services other than Azure AD. For example, an app can create many more subscriptions to `message` or `event` resources, which are supported by the Exchange Online service as part of Microsoft Graph.

- Maximum subscription quotas:

  - Per app: 50,000 total subscriptions
  - Per tenant: 1000 total subscriptions across all apps
  - Per app and tenant combination: 100 total subscriptions

When the limits are exceeded, attempts to create a subscription will result in an [error response](errors.md) - `403 Forbidden`. The `message` property will explain which limit has been exceeded.

- Azure AD B2C tenants are not supported.

- Notification for user entities are not supported for personal Microsoft accounts.

- A [Known issue](graph/concepts/known-issues#change-notifications) exists with user subscriptions.

### Outlook resource limitations

When subscribing to Outlook resources such as **messages**, **events** or **contacts**, if you choose to use the *user principal name* UPN in the resource path, the subscription request might fail if the UPN contains an apostrophe. Consider using GUID user IDs instead of UPNs to avoid running into this problem. For example, instead of using resource path:

`/users/sh.o'neal@contoso.com/messages`

Use: 

`/users/{guid-user-id}/messages`

## Subscription lifetime

Subscriptions have a limited lifetime. Apps need to renew their subscriptions before the expiration time. Otherwise, they need to create a new subscription. For a list of maximum expiration times, see [Maximum length of subscription per resource type](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type).

Apps can also unsubscribe at any time to stop getting notifications.

## Managing subscriptions

Clients can create subscriptions, renew subscriptions, and delete subscriptions.

### Creating a subscription

Creating a subscription is the first step to start receiving notifications for a resource. The subscription process is as follows:

1. The client sends a subscription (POST) request for a specific resource.

1. Microsoft Graph verifies the request.

    - If the request is valid, Microsoft Graph sends a validation token to the notification URL.
    - If the request is invalid, Microsoft Graph sends an error response with code and details.

1. The client sends the validation token back to Microsoft Graph.

1. The Microsoft Graph sends a response back to the client.

The client must store the subscription ID to correlate notifications with the subscription.

#### Subscription request example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/notificationClient",
  "resource": "/me/mailfolders('inbox')/messages",
  "expirationDateTime": "2016-03-20T11:00:00.0000000Z",
  "clientState": "SecretClientState"
}
```

The `changeType`, `notificationUrl`, `resource`, and `expirationDateTime` properties are required. See [subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0) for property definitions and values.

The `resource` property specifies the resource that will be monitored for changes. For example, you can create a subscription to a specific mail folder: `me/mailFolders('inbox')/messages` or on behalf of a user given by an administrator  consent: `users/john.doe@onmicrosoft.com/mailFolders('inbox')/messages`.

Although `clientState` is not required, you must include it to comply with our recommended notification handling process. Setting this property will allow you to confirm that notifications you receive originate from the Microsoft Graph service. For this reason, the value of the property should remain secret and known only to your application and the Microsoft Graph service.

If successful, Microsoft Graph returns a `201 Created` code and a [subscription](/graph/api/resources/subscription?view=graph-rest-1.0) object in the body.

#### Notification endpoint validation

Microsoft Graph validates the notification endpoint provided in the `notificationUrl` property of the subscription request before creating the subscription. The validation process occurs as follows:

1. Microsoft Graph sends a POST request to the notification URL:

    ``` http
    Content-Type: text/plain; charset=utf-8
    POST https://{notificationUrl}?validationToken={opaqueTokenCreatedByMicrosoftGraph}
    ```

    > **Important:** Since the `validationToken` is a query parameter it must be properly decoded by the client, as per HTTP coding practices. If the client does not decode the token, and instead uses the encoded value in the next step (response), validation will fail. Also, the client should treat the token value as opaque since the token format may change in the future, without notice.

1. The client must provide a response with the following characteristics within 10 seconds:

    - A 200 (OK) status code.
    - The content type must be `text/plain`.
    - The body must include the validation token provided by Microsoft Graph.

The client should discard the validation token after providing it in the response.

Additionally, you can use the [Microsoft Graph Postman collection](use-postman.md) to confirm that your endpoint properly implements the validation request. The **Subscription Validation** request in the **Misc** folder provides unit tests that validate the response provided by your endpoint.  

![validation response test results](images/change-notifications/validation-request-tests-results.png)

### Renewing a subscription

The client can renew a subscription with a specific expiration date of up to three days from the time of request. The `expirationDateTime` property is required.

#### Subscription renewal example

```http
PATCH https://graph.microsoft.com/v1.0/subscriptions/{id}
Content-Type: application/json

{
  "expirationDateTime": "2016-03-22T11:00:00.0000000Z"
}
```

If successful, Microsoft Graph returns a `200 OK` code and a [subscription](/graph/api/resources/subscription?view=graph-rest-1.0) object in the body. The subscription object includes the new `expirationDateTime` value.

### Deleting a subscription

The client can stop receiving notifications by deleting the subscription using its ID.

```http
DELETE https://graph.microsoft.com/v1.0/subscriptions/{id}
```

If successful, Microsoft Graph returns a `204 No Content` code.

## Notifications

The client starts receiving notifications after creating the subscription. Microsoft Graph sends a POST request to the notification URL when the resource changes. Notification are sent only for the changes of the type specified in the subscription, for example, `created`.

> **Note:** When using multiple subscriptions that monitor the same resource type and use the same notification URL, a POST can be sent that will contain multiple notifications with different subscription IDs. There is no guarantee that all notifications in the POST will belong to a single subscription.

### Notification properties

The notification object has the following properties:

| Property | Type | Description |
|:---------|:-----|:------------|
| subscriptionId | string | The ID of the subscription that generated the notification. |
| subscriptionExpirationDateTime | [dateTime](https://tools.ietf.org/html/rfc3339) | The expiration time for the subscription. |
| clientState | string | The `clientState` property specified in the subscription request (if any). |
| changeType | string | The event type that caused the notification. For example, `created` on mail receive, or `updated` on marking a message read. |
| resource | string | The URI of the resource relative to `https://graph.microsoft.com`. |
| resourceData | object | The content of this property depends on the type of resource being subscribed to. |
| tenantId | string | The ID of the tenant the notification originated from. |

For example, for Outlook resources, `resourceData` contains the following fields:

| Property | Type | Description |
|:---------|:-----|:------------|
| @odata.type | string | The OData entity type in Microsoft Graph that describes the represented object. |
| @odata.id | string | The OData identifier of the object. |
| @odata.etag | string | The HTTP entity tag that represents the version of the object. |
| id | string | The identifier of the object. |

> **Note:** The `id` value provided in `resourceData` is valid at the time the notification was generated. Some actions, such as moving a message to another folder, may result in the `id` no longer being valid when the notification is processed.

### Notification example

When the user receives an email, Microsoft Graph sends a notification like the following:

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2016-03-19T22:11:09.952Z",
      "clientState":"secretClientValue",
      "changeType":"created",
      "resource":"users/{user_guid}@<tenant_guid>/messages/{long_id_string}",
      "tenantId": "84bd8158-6d4d-4958-8b9f-9d6445542f95",
      "resourceData":
      {
        "@odata.type":"#Microsoft.Graph.Message",
        "@odata.id":"Users/{user_guid}@<tenant_guid>/Messages/{long_id_string}",
        "@odata.etag":"W/\"CQAAABYAAADkrWGo7bouTKlsgTZMr9KwAAAUWRHf\"",
        "id":"<long_id_string>"
      }
    }
  ]
}
```

Note the `value` field is an array of objects. When there are many queued notifications, Microsoft Graph may send multiple items in a single request. Notifications from different subscriptions can be included in the same notification request.

### Processing the notification

Each notification received by your app should be processed. The following are the minimum tasks that your app must perform to process a notification:

1. Send a `202 - Accepted` status code in your response to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code, it will try to publishing the notification a number of times, for a period of about 4 hours; after that, the notification will be dropped and won't be delivered.

    > **Note:** Send a `202 - Accepted` status code as soon as you receive the notification, even before validating its authenticity. You are simply acknowledging the receipt of the notification and preventing unnecessary retries. The current timeout is 30 seconds, but it might be reduced in the future to optimize service performance.

1. Validate the `clientState` property. It must match the value originally submitted with the subscription creation request.

    > **Note:** If this isn't true, you should not consider this a valid notification. It is possible that the notification has not originated from Microsoft Graph and may have been sent by a rogue actor. You should also investigate where the notification comes from and take appropriate action.

1. Update your application based on your business logic.

Repeat for other notifications in the request.

## Code samples

The following code samples are available on GitHub.

- [Microsoft Graph Training Module - Using Change Notifications and Track Changes with Microsoft Graph](https://github.com/microsoftgraph/msgraph-training-changenotifications)
- [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
- [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
- [Microsoft Graph User Webhooks Sample using WebJobs SDK](https://github.com/microsoftgraph/webjobs-webhooks-sample)

## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
- [Change notifications tutorial](/graph/tutorials/change-notifications)
- [Lifecycle notifications (preview)](/graph/concepts/webhooks-outlook-authz.md)

[contact]: /graph/api/resources/contact?view=graph-rest-1.0
[conversation]: /graph/api/resources/conversation?view=graph-rest-1.0
[driveItem]: /graph/api/resources/driveitem?view=graph-rest-1.0
[event]: /graph/api/resources/event?view=graph-rest-1.0
[group]: /graph/api/resources/group?view=graph-rest-1.0
[message]: /graph/api/resources/message?view=graph-rest-1.0
[user]: /graph/api/resources/user?view=graph-rest-1.0
[alert]: /graph/api/resources/alert?view=graph-rest-1.0
[callRecord]: /graph/api/resources/callrecords-callrecord?view=graph-rest-beta
