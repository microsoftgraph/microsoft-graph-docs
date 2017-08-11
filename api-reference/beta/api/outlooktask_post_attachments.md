# Create attachment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Use this API to add an [attachment](../resources/attachment.md) to an [outlookTask](../resources/outlooktask.md).
## Prerequisites
The following **scopes** are required to execute this API: _Tasks.ReadWrite_
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id|userPrincipalName}/outlook/tasks/{id}/attachments
POST /users/{id|userPrincipalName}/outlook/taskFolders/{id}/tasks/{id}/attachments
POST /users/{id|userPrincipalName}/outlook/taskGroups/{id}/taskFolders/{id}/tasks/{id}/attachments

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-Type | A string that represents the type of data in the body of an entity. Required. |


## Request body
In the request body, supply a JSON representation of [attachment](../resources/attachment.md) object.

## Response

If successful, this method returns `201, Created` response code and [attachment](../resources/attachment.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_attachment_from_outlooktask"
}-->
```http
POST https://graph.microsoft.com/beta/users/{id}/outlook/tasks/{id}/attachments
Content-type: application/json
Content-length: 142

{
  "lastModifiedDateTime": "datetime-value",
  "name": "name-value",
  "contentType": "contentType-value",
  "size": 99,
  "isInline": true
}
```
In the request body, supply a JSON representation of [attachment](../resources/attachment.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attachment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 162

{
  "lastModifiedDateTime": "datetime-value",
  "name": "name-value",
  "contentType": "contentType-value",
  "size": 99,
  "isInline": true,
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create attachment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->