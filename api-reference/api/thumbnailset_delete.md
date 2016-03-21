# Delete a thumbnail

Delete a thumbnailSet resource.

For more info, see [thumbnailSet](../resources/thumbnailset.md).

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /drive/root/thumbnails/<id>
DELETE /drive/items/<id>/thumbnails/<id>
DELETE /drives/<id>/root/thumbnails/<id>

```

### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| if-match  | string  | If this request header is included and the eTag (or cTag) provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_thumbnailset"
}-->
```http
DELETE https://graph.microsoft.com/beta/drive/root/thumbnails/<id>
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete thumbnailSet",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
