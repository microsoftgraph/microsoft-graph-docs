# Webhooks for Mail, Calendar and Contacts using Microsoft Graph

Microsoft Graph REST API uses a webhook mechanism to deliver notifications to clients.  A client is a third-party web service that configures its own notification URL to receive notifications. Client apps use notifications to update their local cache and client views upon changes.

Using the Microsoft Graph API, an app can subscribe to notifications of a resource (such as messages in the Inbox). to get informed about changes to the resource. Once Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, fetches more data, updates cache and views, etc.

Apps can to renew their subscriptions before they expire. They can also unsubscribe at any time to stop getting notifications.

If you want to see code samples, they're hosted on GitHub.

* [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET -Webhooks)

Let's take a look at the subscription process.

# Creating a subscription

Creating a subscription is the first step to start receiving notifications for a resource. The subscription process is as follows:

1. Client sends a subscription (POST) request for a specific resource.
2. Microsoft Graph verifies the request.
  * If the request is valid, Microsoft Graph sends a validation token to the notification URL.
  * If the request is invalid, Microsoft Graph sends error response with code and details.
3. The client sends the validation token back to Microsoft Graph.

Client must store the subscription ID to correlate a notification with the corresponding subscription.

## Characteristics of subscriptions

You can create subscriptions for resources such as messages, events, and contacts.

You can create a subscription to a specific folder, like
`https://graph.microsoft.com/beta/me/mailfolders('inbox')/messages`

Or to a top-level resource, such as
`https://graph.microsoft.com/beta/me/messages`

Creating a subscription requires read scope to the resource. For example, to get notifications messages, your app needs the `mail.read` permission.

Subscriptions expire. The current longest expiration time is three days from time of creation. Apps need to renew their subscriptions before the expiration time. Otherwise they will need to create a new subscription.

## Notification URL validation

Microsoft Graph validates the notification URL in a subscription request before creating the subscription. The validation process occurs as follows:

1. Microsoft Graph sends a POST request to the notification URL:

  ```
  POST https://{notificationUrl}?validationtoken={TokenDefinedByMicrosoftGraph}
  ClientState: {Data sent in ClientState value in subscription request (if any)}
  ```
 
2. The client must provide a response with the following characteristics within 10 seconds:
  * The code must 200 (OK).
  * The content type must be plain/text. 
  * The body must include the validation token provided by Microsoft Graph.

The client should discard the validation token after providing it in the response.

## Subscription request example

```
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "Created,Updated",
  "notificationURL": "https://webhook.azurewebsites.net/notificationClient",
  "resource": "/me/mailfolders('inbox')/messages",
  "clientState": "SecretClientState",
  "expirationDateTime": "2016-03-20T11:00:00.0000000Z"
}
```

The changeType, notificationURL and resource properties are required. See [subscription resource type](subscription.md) for property definitions and values.

If successful, Microsoft Graph returns a `200 OK` code and a [subscription](subscription.md) object in the body.

# Renewing a subscription

The client can renew a subscription to a specific expiration date of up to three days from the time of request. The expirationDateTime property is optional. The default value is three days from the time of the request.

## Subscription renewal example

```
PATCH https://graph.microsoft.com/beta/subscriptions/<id>;
Content-Type: application/json
{
  "expirationDateTime": "2016-03-22T11:00:00.0000000Z"
}
```

If successful, Microsoft Graph returns a `200 OK` code and a [subscription](subscription.md) object in the body. The subscription object includes the new expirationDateTime value. 

# Deleting a subscription

The client can stop receiving notifications by deleting the subscription using its ID.

```
DELETE https://graph.microsoft.com/beta/subscriptions/<id>
```

If successful, Microsoft Graph returns a `204 No Content` code.

# Notifications

The client starts receiving notifications after creating the subscription. Microsoft Graph sends a request to the notification URL when changes happen to the resource. The client only gets notifications according to the specified change type, such as *Created*.

## Notification properties

The notification object has the following properties:

* id - The ID for the subscription to which this notification belongs.
* expirationDateTime - The expiration time for the subscription.
* clientState - The clientState property specified in the subscription request.
* changeType - The event type that caused the notification. For example, *Created* on mail receive, or *Updated* on marking a message read.
* resource - The URI of the resource relative to `https://graph.microsoft.com`. 
* resourceData
  * @odata.type - The OData entity type in Microsoft Graph that describes the represented object.
  * @odata.id - The OData identifier of the object.
  * @odata.etag - The HTTP entity tag that represents a version of the object.
  * Id - The identifier of the object.

## Notification example

When the user receives an email, Microsoft Graph sends a notification like the following:

```
{
  "value":[
  {
    "id":"<subscription_guid>",
    "expirationDateTime":"\"2016-03-19T22:11:09.952Z\"",
    "clientState":"SecretClientState",
    "changeType":"Created",
    "resource":"Users/<user_guid>@<tenant_guid>/Messages/<long_id_string>",
    "resourceData":
    {
      "@odata.type":"#Microsoft.Graph.Message",
      "@odata.id":"Users/<user_guid>@<tenant_guid>/Messages/<long_id_string>",
      "@odata.etag":"W/\"CQAAABYAAADkrWGo7bouTKlsgTZMr9KwAAAUWRHf\"",
      "Id":"<long_id_string>"
    }
  }
  ]
}
```

Note that the value object contains a list. If there are many queued notifications, Microsoft Graph sends them in a single request.

## Processing the notification

Once your application starts receiving notifications it must process them. The following are the minimum tasks that your app must perform to process a notification:

1. Validate the `clientState` property. The clientState property in the notification must match the one submitted with the subscription request.
  > Note: If this is not true, you should not consider this a valid notification. You should also investigate where the notification comes from and take appropriate action.
2. Update your application based on your business logic.
3. Send a `202 - Accepted` status code in your response to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code, it will retry resending the notification a number of times.
  > You should send a `202 - Accepted` status code even if the clientState property doesn't match the one submitted with the subscription request.

Repeat for extra notifications in the request.

# Next steps

We are really excited about the webhooks in Microsoft Graph. Try them out and send us feedback on [UserVoice](https://officespdev.uservoice.com/). We are listening to your suggestions and ideas there.

# Additional resources

* [Subscription resource type](subscription.md)
* [Get subscription](../api/subscription_get.md)
* [Create subscription](../api/subscription_post_subscriptions.md)
* [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET -Webhooks)