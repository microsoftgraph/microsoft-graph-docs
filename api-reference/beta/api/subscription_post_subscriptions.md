# Create subscription

Subscribes a listener application to receive notifications when data on the Microsoft Graph changes.
## Prerequisites
One of the following **scopes**, depending on the target resource, are required to execute this API: *Mail.Read*, *Calendars.Read*, *Contacts.Read*, *Group.Read.All*, *Files.ReadWrite* or *Files.ReadWrite.All*. ***Note:*** The /beta endpoint allows Application permissions for most resources. Conversations in a Group and OneDrive drive root items are not supported with Application permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
POST /subscriptions

```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |


## Response
If successful, this method returns `201, Created` response code and a [subscription](../resources/subscription.md) object in the response body.

## Example
##### Request
Here is an example of the request to send a notification when the user receives a new mail.
<!-- {
  "blockType": "request",
  "name": "create_subscription_from_subscriptions"
}-->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-type: application/json

{
   "changeType": "created,updated",
   "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
   "resource": "me/mailFolders('Inbox')/messages",
   "expirationDateTime":"2016-11-20T18:23:45.9356913Z",
   "clientState": "subscription-identifier"
}
```
In the request body, supply a JSON representation of the [subscription](../resources/subscription.md) object.
The *clientState* field is optional.

##### Resources examples
The following are valid values for the resource property of the subscription:

| Resource type | Examples |
|:------ |:----- |
|Mail|me/mailfolders('inbox')/messages<br />me/messages|
|Contacts|me/contacts|
|Calendars|me/events|
|Conversations|groups('*{id}*')/conversations|
|Drives|me/drive/root|

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 252

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",
  "id":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "resource":"me/mailFolders('Inbox')/messages",
  "changeType":"created, updated",
  "clientState":"subscription-identifier",
  "notificationUrl":"https://webhook.azurewebsites.net/api/send/myNotifyClient",
  "expirationDateTime":"2016-11-20T18:23:45.9356913Z"
}
```
## Subscription validation
In order to to avoid mistaken subscriptions directing notifications to arbitrary URLs, the subscription notification endpoint must be capable of responding to a validation request. During processing of the `POST` to the `/subscriptions` endpoint, the Microsoft Graph will send a `POST` request back to your `notificationUrl` in the following form:
```http
POST https://webhook.azurewebsites.net/api/send/myNotifyClient?validationToken=<token>
```
The notification endpoint must send a 200 response with the value of `<token>` as its body and a content type of `text/plain`, as shown below, within 10 seconds otherwise the creation request will be discarded.
```http
HTTP/1.1 200 OK
Content-type: text/plain
Content-length: 7
<token>
```
##### Notification payload
When the subscribed resource changes, the webhooks facility sends a notification to your notification URL with the following payload.  The notification endpoint must send a response of 200 or 204 with no response body within 30 seconds otherwise the notification attempt will be retried at exponentially increasing intervals.  Services that consistently take 30 seconds or more may be throttled and receive a sparser notification set.

Services may also return a 422 response from a notification, in which case the subscription will be automatically deleted and the stream of notifications will come to a halt.

Depending on the subscribed resource, an additional resourceData field may provide additional information.

```http
{
  "subscriptionId":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "subscriptionExpirationDateTime":"2015-11-20T18:23:45.9356913Z",
  "clientState":"subscription-identifier",
  "changeType":"Created",
  "resource":"Users/ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4/messages/AAMkADMxZmEzMDM1LTFjODQtNGVkMC04YzY3LTBjZTRlNDFjNGE4MwBGAAAAAAAr-q_ZG7oXSaqxum7oZW5RBwCoeN6SYXGLRrvRm_CYrrfQAAAAAAEMAACoeN6SYXGLRrvRm_CYrrfQAACvtMe6AAA=",
  "resourceData":{
    "@odata.type":"#Microsoft.Graph.Message",
    "@odata.id":"Users/ddfcd489-628b-7d04-b48b-20075df800e5@1717622f-1d94-c0d4-9d74-f907ad6677b4/messages/AAMkADMxZmEzMDM1LTFjODQtNGVkMC04YzY3LTBjZTRlNDFjNGE4MwBGAAAAAAAr-q_ZG7oXSaqxum7oZW5RBwCoeN6SYXGLRrvRm_CYrrfQAAAAAAEMAACoeN6SYXGLRrvRm_CYrrfQAACvtMe6AAA=",
    "@odata.etag":"W/\"CQAAABYAAACoeN6SYXGLRrvRm+CYrrfQAACvvGdb\"",
    "Id":"AAMkADMxZmEzMDM1LTFjODQtNGVkMC04YzY3LTBjZTRlNDFjNGE4MwBGAAAAAAAr-q_ZG7oXSaqxum7oZW5RBwCoeN6SYXGLRrvRm_CYrrfQAAAAAAEMAACoeN6SYXGLRrvRm_CYrrfQAACvtMe6AAA="
  }
}
```
When receiving notifications from Drive subscriptions the resourceData will be null and the [delta](item_delta.md) API should be called to determine the changes that have occured. Here is an example of a Drive notification:
```http
{
  "subscriptionId": "aa269f87-2a92-4cff-a43e-2771878c3727",
  "clientState": "My client state",
  "changeType": "updated",
  "resource": "me/drive/root",
  "subscriptionExpirationDateTime": "2016-08-26T23:08:37.00+00:00",
  "resourceData": null
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
