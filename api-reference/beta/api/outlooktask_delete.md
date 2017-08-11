# Delete outlookTask

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Delete the specified Outlook task in the user's mailbox.
## Prerequisites
The following **scopes** are required to execute this API: _Tasks.ReadWrite_
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id|userPrincipalName}/outlook/tasks/{id}
DELETE /users/{id|userPrincipalName}/outlook/taskFolders/{id}/tasks/{id}
DELETE /users/{id|userPrincipalName}/outlook/taskGroups/{id}/taskFolders/{id}/tasks/{id}

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |


## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_outlooktask"
}-->
```http
DELETE https://graph.microsoft.com/beta/me/outlook/tasks('AAMkADIyAAAhrb_QAAA=')
```
##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete outlookTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->