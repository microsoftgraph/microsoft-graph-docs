# Update thumbnailset

Update the properties of thumbnailset object.

For more info, see [thumbnailSet](../resources/thumbnailset.md).
### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root/thumbnails/<id>
PATCH /drive/items/<id>/thumbnails/<id>
PATCH /drives/<id>/root/thumbnails/<id>
```

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer <token>. Required. |


### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|large|thumbnail|A 1920x1920 scaled thumbnail.|
|medium|thumbnail|A 176x176 scaled thumbnail.|
|small|thumbnail|A 48x48 cropped thumbnail.|
|source|thumbnail|A custom thumbnail image or the original image used to generate other thumbnails.|

### Response
If successful, this method returns a `200 OK` response code and updated [thumbnailSet](../resources/thumbnailset.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_thumbnailset"
}-->
```http
PATCH https://graph.microsoft.com/beta/drive/root/thumbnails/<id>
Content-type: application/json
Content-length: 456

{
  "id": "id-value",
  "large": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "medium": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "small": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "source": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  }
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.thumbnailSet"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 456

{
  "id": "id-value",
  "large": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "medium": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "small": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  },
  "source": {
    "content": "content-value",
    "height": 99,
    "url": "url-value",
    "width": 99
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update thumbnailset",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
