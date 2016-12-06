# Delete an item from a list

Removes an item from a [list][].

[list]: ../resources/list.md

## Prerequisites

To delete an item, the user must have granted the application write access to the item to be deleted.

One of the following scopes is required to execute this request:

* Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items/{item-id}
DELETE https://graph.microsoft.com/beta/sharepoint:/{list-path}:/items/{item-id}
```

### Optional request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
| _if-match_ | etag  | If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.

### Request body

Do not supply a request body with this method.

### Example

<!-- { "blockType": "request", "name": "delete-item", "scopes": "files.readwrite" } -->

```http
DELETE https://graph.microsoft.com/beta/sharepoint/sites/{site-id}/lists/{list-id}/items/{item-id}
```

## Response

If successful, this call returns a `204 No Content` response to indicate that resource was deleted and there was nothing to return.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "ListItem/Delete"
} -->
