# Update an item

Update the metadata for an item by ID or path. You can also use update to move an item to another parent by updating the item's **parentReference** property.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/items/{item-id}
PATCH /drive/root:/{item-path}
```

### Request headers

| Name       | Type | Description                                                                                                                                                         |
|:-----------|:------|:-------------------------|
| if-match | String  | If this request header is included and the eTag (or cTag) provided does not match the current eTag on the folder, a `412 Precondition Failed` response is returned. |
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply the values for relevant fields that should be
updated. Existing properties that are not included in the request body
will maintain their previous values or be recalculated based on changes to other
property values. For best performance you shouldn't include existing values
that haven't changed.

### Response
If successful, this method returns a `200 OK` response code and updated [item](../resources/driveitem.md) object in the response body.
### Example
This example renames and moves a folder to a new parent path.
<!-- {
  "blockType": "request",
  "name": "update_item"
}-->
```http
PATCH /drive/items/{item-id}
Content-type: application/json

{
	"name": "new-item-name",
	"parentReference" : {"path": "/drive/root:/Documents"}
}
```

### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"id": "0123456789abc",
	"name": "BFolder",
	"folder": { "childCount": 3 }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
