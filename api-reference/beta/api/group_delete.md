# Delete group

Deletes a group.

When a group is deleted, the item is added to [deleted items](../resources/directory.md). The group will remain in deleted items for up to 30 days. A group can be fully restored from deleted items during the 30 days. After 30 days, deleted items are permanently deleted.

## Prerequisites
The following **scope** is required to execute this API: *Group.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /groups/{id}
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_group"
}-->
```http
DELETE https://graph.microsoft.com/beta/groups/{id}
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
  "description": "Delete group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->