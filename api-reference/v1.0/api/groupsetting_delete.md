# Delete a group setting

Delete a group setting.

## Prerequisites

One of the following **scopes** is required to execute this API: *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*

> Note: Only tenant admins have permissions to perform create, update, and delete operations.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /groupSettings/{id}
DELETE /groups/{id}/settings/{id}

```

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-Type  | application/json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "delete_groupsetting"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/groupSettings/{id}
```
##### Response
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
  "description": "Delete groupSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->