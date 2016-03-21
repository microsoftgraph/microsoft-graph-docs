# Create thumbnailSet

Use this API to create a new thumbnailSet.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/thumbnails
POST /me/drive/root/thumbnails
POST /workbooks/<id>/thumbnails

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [thumbnailSet](../resources/thumbnailset.md) object.


### Response
If successful, this method returns `201, Created` response code and [thumbnailSet](../resources/thumbnailset.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_thumbnailset_from_driveitem"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/thumbnails
Content-type: application/json
Content-length: 508

{
  "thumbnailSet": {
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
}
```
In the request body, supply a JSON representation of [thumbnailSet](../resources/thumbnailset.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.thumbnailset"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 530

{
  "thumbnailSet": {
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
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create thumbnailSet",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->