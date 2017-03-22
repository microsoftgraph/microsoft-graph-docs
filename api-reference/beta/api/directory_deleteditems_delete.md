# Permanently delete item

Permanently deletes an item from [deleted items](../resources/directory.md).

Currently, deleted items functionality is only supported for the [group](../resources/group.md) resource. You can permanently delete a group from deleted items. But, once an item is permanently deleted, it **cannot** be restored.

### Prerequisites
The following **scope** is required to execute this API: *Group.ReadWrite.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/deleteditems/{id}
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;code&gt; *Required*|
| Accept  | application/json |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "delete_directory"
}-->
```http
DELETE https://graph.microsoft.com/beta/directory/deleteditems/46cc6179-19d0-473e-97ad-6ff84347bbbb
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
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
  "description": "Delete directory",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->