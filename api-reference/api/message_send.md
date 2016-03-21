# message: send

Send a message in the draft folder. The draft message can be a new message draft, reply draft, reply-all draft, or 
a forward draft. The message is then saved in the Sent Items folder.

### Prerequisites
One of the following **scopes** is required to execute this API:
*Mail.Send*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/messages/<id>/microsoft.graph.send
POST /users/<id | userPrincipalName>/messages/<id>/microsoft.graph.send
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body

### Response
If successful, this method returns `202, Accepted` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_send"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/<id>/microsoft.graph.send
```

##### Response
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: send",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
