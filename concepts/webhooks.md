---
title: "Set up notifications for changes in user data"
description: "The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes."
author: "piotrci"
localization_priority: Priority
---

# Set up notifications for changes in user data

The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates its cache and views, etc.

## Supported resources

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

- Messages
- Events
- Contacts
- Users
- Groups
- Group conversations
- Content shared on OneDrive including drives associated with SharePoint sites
- User's personal OneDrive folders
- Security Alerts

For instance, you can create a subscription to a specific mail folder:
`me/mailFolders('inbox')/messages`

Or to a top-level resource:
`me/messages`, `me/contacts`, `me/events`, `users`, or `groups`

Or to a specific resource instance:
`users/{id}`, `groups/{id}`, `groups/{id}/conversations`

Or to a SharePoint/OneDrive for Business drive:
`/drive/root`

Or to a user's personal OneDrive:
`/drives/{id}/root`
`/drives/{id}/root/subfolder`

Or to a new [Security API alert](security-concept-overview.md):
`/security/alerts?$filter=status eq ‘New’`,
`/security/alerts?$filter=vendorInformation/provider eq ‘ASC’`

### Azure AD resource limitations

Certain limits apply to Azure AD based resources (users, groups) and may generate errors when exceeded:

- Maximum subscription quotas:

  - Per app: 50,000 total subscriptions
  - Per tenant: 35 total subscriptions across all apps
  - Per app and tenant combination: 7 total subscriptions

- Azure AD B2C tenants are not supported.

- Notification for user entities are not supported for personal Microsoft accounts.

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
    POST https://{notificationUrl}?validationToken={opaqueTokenCreatedByMicrosoftGraph}
    ```

    > **Important:** Since the `validationToken` is a query parameter it must be properly decoded by the client, as per HTTP coding practices. If the client does not decode the token, and instead uses the encoded value in the next step (response), validation will fail. Also, the client should treat the token value as opaque since the token format may change in the future, without notice.

1. The client must provide a response with the following characteristics within 10 seconds:

    - A 200 (OK) status code.
    - The content type must be `text/plain`.
    - The body must include the validation token provided by Microsoft Graph.

The client should discard the validation token after providing it in the response.

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

1. Validate the `clientState` property. It must match the value originally submitted with the subscription creation request.

    > **Note:** If this isn't true, you should not consider this a valid notification. It is possible that the notification has not originated from Microsoft Graph and may have been sent by a rogue actor. You should also investigate where the notification comes from and take appropriate action.

1. Update your application based on your business logic.

1. Send a `202 - Accepted` status code in your response to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code, it will retry the notification a number of times.

    > **Note:** You should send a `202 - Accepted` status code even if the `clientState` property doesn't match the one submitted with the subscription request. This is a good practice as it prevents a potential rogue actor from discovering the fact that you may not trust their notifications, and perhaps using that information to guess the value of the `clientState` property.

Repeat for other notifications in the request.

## Code samples

The following code samples are available on GitHub.

- [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
- [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
- [Microsoft Graph User Webhooks Sample using WebJobs SDK](https://github.com/microsoftgraph/webjobs-webhooks-sample)

## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)

[contact]: /graph/api/resources/contact?view=graph-rest-1.0
[conversation]: /graph/api/resources/conversation?view=graph-rest-1.0
[drive]: /graph/api/resources/drive?view=graph-rest-1.0
[event]: /graph/api/resources/event?view=graph-rest-1.0
[message]: /graph/api/resources/message?view=graph-rest-1.0
