# message: copy

Copy a message to a folder.

### Prerequisites
One of the following **scopes** is required to execute this API:
*Mail.ReadWrite*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/messages/<id>/microsoft.graph.copy
POST /users/<id | userPrincipalName>/messages/<id>/microsoft.graph.copy
POST /me/mailFolders/<id>/messages/<id>/microsoft.graph.copy
POST /users/<id | userPrincipalName>/mailFolders/<id>/messages/<id>/microsoft.graph.copy
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|destinationId|String|The destination folder ID, or the `Inbox`, `Drafts`, `SentItems`, or `DeletedItems` well-known folder name.|

### Response
If successful, this method returns `201, Created` response code and [Message](../resources/message.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "message_copy"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/<id>/microsoft.graph.copy
Content-type: application/json
Content-length: 44

{
  "destinationId": "destinationId-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 248

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": "",
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: copy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
