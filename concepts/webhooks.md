# Working with Webhooks in Microsoft Graph

The Microsoft Graph REST API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

Using the Microsoft Graph REST API, an app can subscribe to changes on the following resources:

* Messages
* Events
* Contacts
* Users
* Groups
* Group conversations
* Content shared on OneDrive including drives associated with SharePoint sites
* User's personal OneDrive folders

For instance, you can create a subscription to a specific folder:
`me/mailfolders('inbox')/messages`

Or a specific ID:
`users/{id}`, `groups/{id}`, `groups/{id}/conversations`

Or to a top-level resource:
`me/messages`, `me/contacts`, `me/events`, `users`, or `groups`

Or on a Sharepoint / OneDrive for Business drive:
`/drive/root`

Or on a user's personal OneDrive:
`/drives/{id}/root`
`/drives/{id}/root/subfolder`

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates cache and views, etc.

Apps need to renew their subscriptions before the expiration time. Otherwise, they need to create a new subscription. For a list of maximum expiration times, see [Maximum length of subscription per resource type](../api-reference/v1.0/resources/subscription.md#maximum-length-of-subscription-per-resource-type).

Apps can also unsubscribe at any time to stop getting notifications.

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api-reference/v1.0/api/subscription_post_subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types. 

| Permission type | Supported resource types in v1.0 |
|:----------------|:---------------------------------|
| Delegated - work or school account | [contact](../api-reference/v1.0/resources/contact.md), [conversation](../api-reference/v1.0/resources/conversation.md), [drive](../api-reference/v1.0/resources/drive.md), [event](../api-reference/v1.0/resources/event.md), [message](../api-reference/v1.0/resources/message.md) |
| Delegated - personal Microsoft account | None |
| Application | [contact](../api-reference/v1.0/resources/contact.md), [conversation](../api-reference/v1.0/resources/conversation.md), [event](../api-reference/v1.0/resources/event.md), [message](../api-reference/v1.0/resources/message.md) |

## Code samples

The following code samples are available on GitHub.

* [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)

# Creating a subscription

Creating a subscription is the first step to start receiving notifications for a resource. The subscription process is as follows:

1. The client sends a subscription (POST) request for a specific resource.
2. Microsoft Graph verifies the request.
  * If the request is valid, Microsoft Graph sends a validation token to the notification URL.
  * If the request is invalid, Microsoft Graph sends an error response with code and details.
3. The client sends the validation token back to Microsoft Graph.

Client must store the subscription ID to correlate a notification with the corresponding subscription.

## Notification URL validation

Microsoft Graph validates the notification URL in a subscription request before creating the subscription. The validation process occurs as follows:

1. Microsoft Graph sends a POST request to the notification URL:

  ``` http
  POST https://{notificationUrl}?validationToken={TokenDefinedByMicrosoftGraph}
  ClientState: {Data sent in ClientState value in subscription request (if any)}
  ```
 
2. The client must provide a response with the following characteristics within 10 seconds:

  * A 200 (OK) status code.
  * The content type must be text/plain. 
  * The body must include the validation token provided by Microsoft Graph.

The client should discard the validation token after providing it in the response.

## Subscription request example

``` 
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

The `changeType`, `notificationUrl`, `resource`, and `expirationDateTime` properties are required. See [subscription resource type](../api-reference/v1.0/resources/subscription.md) for property definitions and values. Although `clientState` is not required, you must include it to comply with our recommended notification handling process.

If successful, Microsoft Graph returns a `201 Created` code and a [subscription](../api-reference/v1.0/resources/subscription.md) object in the body.

## Limitations

Certain limits apply and may generate errors when exceeded:

1) Maximum subscription quotas

     Per App: 50,000 total subscriptions
     Per Tenant: 35 total subscriptions across all apps
     Per App and Tenant combination: 7 total subscriptions

2) Azure AD B2C tenants are not supported

3) Consumer account Users not supported


# Renewing a subscription

The client can renew a subscription with a specific expiration date of up to three days from the time of request. The expirationDateTime property is required.

## Subscription renewal example

```
PATCH https://graph.microsoft.com/v1.0/subscriptions/{id};
Content-Type: application/json
{
  "expirationDateTime": "2016-03-22T11:00:00.0000000Z"
}
```

If successful, Microsoft Graph returns a `200 OK` code and a [subscription](../api-reference/v1.0/resources/subscription.md) object in the body. The subscription object includes the new expirationDateTime value. 

# Deleting a subscription

The client can stop receiving notifications by deleting the subscription using its ID.

```
DELETE https://graph.microsoft.com/v1.0/subscriptions/{id}
```

If successful, Microsoft Graph returns a `204 No Content` code.

# Notifications

The client starts receiving notifications after creating the subscription. Microsoft Graph sends a POST request to the notification URL when changes happen to the resource. The client only gets notifications according to the specified change type, such as *created*.

## Notification properties

The notification object has the following properties:

* subscriptionId - The ID for the subscription to which this notification belongs.
* subscriptionExpirationDateTime - The expiration time for the subscription.
* clientState - The clientState property specified in the subscription request.
* changeType - The event type that caused the notification. For example, *created* on mail receive, or *updated* on marking a message read.
* resource - The URI of the resource relative to `https://graph.microsoft.com`. 
* resourceData - The object dependent on the resource being subscribed to.  For example, for Outlook resources:
  * @odata.type - The OData entity type in Microsoft Graph that describes the represented object.
  * @odata.id - The OData identifier of the object.
  * @odata.etag - The HTTP entity tag that represents a version of the object.
  * id - The identifier of the object.


> Note: The Id value provided in resourceData is valid at the time the notification was queued. Some actions, such as moving a message to another folder, may result in a resource's Id being changed. 

## Notification example

When the user receives an email, Microsoft Graph sends a notification like the following:

```
{
  "value":[
  {
    "subscriptionId":"<subscription_guid>",
    "subscriptionExpirationDateTime":"2016-03-19T22:11:09.952Z",
    "clientState":"SecretClientState",
    "changeType":"Created",
    "resource":"Users/{user_guid}@<tenant_guid>/Messages/{long_id_string}",
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

Note the value object contains a list. If there are many queued notifications, Microsoft Graph sends them in a single request.

## Processing the notification

After your application starts receiving notifications it must process them. The following are the minimum tasks that your app must perform to process a notification:

1. Validate the `clientState` property. The clientState property in the notification must match the one submitted with the subscription request.
  > Note: If this isn't true, you shouldn't consider this a valid notification. You should also investigate where the notification comes from and take appropriate action.

2. Update your application based on your business logic.
3. Send a `202 - Accepted` status code in your response to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code, it will retry resending the notification a number of times.
  > You should send a `202 - Accepted` status code even if the clientState property doesn't match the one submitted with the subscription request.

Repeat for other notifications in the request.

# See also

* [Subscription resource type](../api-reference/v1.0/resources/subscription.md)
* [Get subscription](../api-reference/v1.0/api/subscription_get.md)
* [Create subscription](../api-reference/v1.0/api/subscription_post_subscriptions.md)
* [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
