# Create Message

Use this API to create a draft of a new message. Drafts can be created in any folder and optionally updated before sending. To save to the Drafts folder, use the /messages shortcut.
## Prerequisites
One of the following **scopes** is required to execute this API:
*Mail.ReadWrite*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/<id | userPrincipalName>/messages
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of [Message](../resources/message.md) object.


## Response
If successful, this method returns `201, Created` response code and [Message](../resources/message.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_message_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/messages
Content-type: application/json

{
  "hasAttachments": false,
  "subject": "subject-value",
  "body": {
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```
In the request body, supply a JSON representation of [message](../resources/message.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('me')/messages/$entity","@odata.etag":"W/\"CQAAABYAAAAQkDd73rdLQKSqoizFkjaFAAAUrzjV\"",
  "id":"id-value",
  "createdDateTime":"2016-09-23T18:17:43Z",
  "lastModifiedDateTime":"2016-09-23T18:17:43Z",
  "changeKey":"changeKey-value",
  "categories":[],
  "receivedDateTime":"2016-09-23T18:17:43Z",
  "sentDateTime":"2016-09-23T18:17:43Z",
  "hasAttachments":false,
  "internetMessageId":"internetMessageId-value",
  "subject":"subject-value",
  "body":{
    "contentType":"text",
    "content":"content-value"
    },
  "bodyPreview":"content-value",
  "importance":"normal",
  "parentFolderId":"parentFolderId-value",
  "toRecipients":[],
  "ccRecipients":[],
  "bccRecipients":[],
  "replyTo":[],
  "conversationId":"conversationId-value",
  "isDeliveryReceiptRequested":false,
  "isReadReceiptRequested":false,
  "isRead":true,
  "isDraft":true,
  "webLink":"https://outlook.office365.com/owa/?",
  "inferenceClassification":"focused"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Message",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
