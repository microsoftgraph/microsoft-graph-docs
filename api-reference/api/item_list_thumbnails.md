# List thumbnails for driveItem

Retrieve a set of thumbnailSet resources for a [driveItem object](../resources/driveitem.md).

An item in a drive can be represented by zero or more
[thumbnailSet](../resources/thumbnailset.md) objects. Each **thumbnailSet** can
have one or more [**thumbnail**](../resources/thumbnail.md) objects, which are images that represent the
item. For example, a **thumbnailSet** may include **thumbnail** objects, such as
common ones including `small`, `medium`, or `large`.

There are many ways to work with thumbnails on OneDrive.
Here are the most common ones:

* Enumerate available thumbnails for an item
* Retrieve a single thumbnail for an item
* Retrieve thumbnail content
* Retrieve thumbnails for multiple items in a single request
* Retrieve custom thumbnail sizes
* Upload a custom thumbnail for an item
* Determine if a custom uploaded thumbnail exists


### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite


### HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/root:/{item-path}:/thumbnails
GET /me/drive/items/{item-id}/thumbnails
GET /groups/<id>/drive/items/<item-id>/thumbnails
```
### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters)
to help customize the response.

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and collection of
[thumbnailSet](../resources/thumbnailset.md) objects in the response body.

### Example

##### Request

Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_thumbnails"
}-->
```http
GET /me/drive/items/<item-id>/thumbnails
```


##### Response
Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.thumbnailSet",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "0",
      "small": { "height": 64, "width": 96, "url": "https://sn3302files..."},
      "medium": { "height": 117, "width": 176, "url": "https://sn3302files..."},
      "large": { "height": 533, "width": 800, "url": "https://sn3302files..."}
    }
  ]
}
```

## Retrieve a single thumbnail

Retrieve the metadata for a single thumbnail and size by addressing
it directly in a request.

### HTTP request

<!-- { "blockType": "request", "name": "get-one-thumbnail" } -->
```http
GET /me/drive/items/<item-id>/thumbnails/<thumb-id>/<size>
```

### Path parameters

| Name         | Type   | Description                                                                         |
|:-------------|:-------|:------------------------------------------------------------------------------------|
| **item-id**  | string | The unique identifier for the item referenced.                                      |
| **thumb-id** | number | The index of the thumbnail, usually 0-4.                                            |
| **size**     | string | The size of the thumbnail requested. This must be one of the standard sizes listed. |


<!-- { "blockType": "response", "@odata.type": "microsoft.graph.thumbnail" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "width": 100,
  "height": 100,
  "url": "http://onedrive.com/asd123a/asdjlkasjdkasdjlk.jpg"
}
```

## Retrieve thumbnail content

You can directly retrieve the content of the thumbnail by requesting the
**content** property of the thumbnail.

### HTTP request

<!-- { "blockType": "request", "name":"get-thumbnail-content" } -->
```http
GET /me/drive/items/<item-id>/thumbnails/<thumb-id>/<size>/content
```

### Response

The service responds with a redirect to the thumbnail URL.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 302 Found
Location: https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi
```

Thumbnail URLs are cache-safe. The URL will change, if the item
changes in a way that requires a new thumbnail to be generated.

### Size values

This table defines the possible thumbnail sizes. While you can
request any arbitrary thumbnail size, the defined values are likely to exist and
return a value quickly:

| Name           | Resolution  | Aspect Ratio | Description                                                          |
|:---------------|:------------|:-------------|:---------------------------------------------------------------------|
| `small`        | 96 longest  | Original     | Small, highly compressed thumbnail cropped to a square aspect ratio. |
| `medium`       | 176 longest | Original     | Cropped to the standard item size for the OneDrive web view.         |
| `large`        | 800 longest | Original     | Thumbnail with the longest edge resized to 800 pixels.               |


## Remarks

**Note** In OneDrive for Business and SharePoint:

* Using these calls to expand the thumbnails collection will not work:
  `GET /drive/root:/{item-path}?expand=children(expand=thumbnails)`
  `GET /drive/items/{item-id}/children?expand=thumbnails`


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get metadata and content for thumbnails of multiple sizes for OneDrive items.",
  "keywords": "thumbnail,content,download,sizes",
  "section": "documentation",
  "tocPath": "OneDrive/Item/List thumbnails"
} -->
