# List thumbnails

Retrieve a list of thumbnailSet resources.

An item in a drive can be represented by zero or more [thumbnailSet](../resources/thumbnailset.md) objects.
Each **thumbnailSet** can have one or more **thumbnail** objects, which are images that represent the item. For example, a **thumbnailSet** may include **thumbnail** objects, such as common ones including `small`, `medium`, or `large` and custom defined ones such as `c300x400_Crop`. Items have **thumbnailSet** objects that are either generated automatically by OneDrive based off the item or that are defined by a custom uploaded image.

There are many ways to work with thumbnails on OneDrive.
Here are the most common ones:

* Enumerate available thumbnails for an item
* Retrieve a single thumbnail for an item
* Retrieve thumbnail content
* Retrieve thumbnails for multiple items in a single request
* Retrieve custom thumbnail sizes
* Upload a custom thumbnail for an item
* Determine if a custom uploaded thumbnail exists

### HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /drive/root:/{item-path}:/thumbnails
GET /drive/items/{item-id}/thumbnails
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and collection of [thumbnailSet](../resources/thumbnailset.md) objects in the response body.

### Example

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_thumbnails"
}-->
```http
GET /drive/root:/{item-path}:/thumbnails
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
GET /drive/items/{item-id}/thumbnails/{thumb-id}/{size}
```

### Path parameters

| Name       | Type   | Description                                                                              |
|:-----------|:-------|:-----------------------------------------------------------------------------------------|
| _item-id_  | string | The unique identifier for the item referenced.                                           |
| _thumb-id_ | number | The index of the thumbnail, usually 0-4. If there is a custom thumbnail, its index is 0. |
| _size_     | string | The size of the thumbnail requested. This can be one of the standard sizes listed below. |


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
GET /drive/items/{item-id}/thumbnails/{thumb-id}/{size}/content
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


## Getting multiple thumbnails

To display multiple thumbnails, such as rendering
photo thumbnails for a collection of images, you can optimize your API calls
by requesting those thumbnail URLs in one request. This will optimize the performance
of your application and reduce the number of API calls your app makes.

When retrieving a collection of items, expand the thumbnails collection to also
get the thumbnail URLs for those items.

### HTTP request

This request returns the **id** and **name** property for each item, along with a
the **large** thumbnail size for any item that has a thumbnail available.

<!-- { "blockType": "request", "name":"get-many-thumbnails" } -->
```http
GET /drive/items/{item-id}/children?select=id,name&expand=thumbnails(select=large)
```

### Response

In addition to the normal enumeration of an item's children, this request also
returns thumbnail metadata for the large thumbnails on all items where a thumbnail
is available.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "isCollection": true, "truncated": true } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "12903019809a!109bac",
      "name": "DSCN1234.JPG",
      "thumbnails": [
        {
          "id": "0",
          "large": {
            "width": 800,
            "height": 533,
            "url": "https://bn2_0095.livefilestore.com/ASpofswjras9uflkhg/image.jpg"
          }
        }
      ]
    },
    {
      "id": "12903019809a!109bae",
      "name": "DSCN1235.JPG",
      "thumbnails": [
        {
          "id": "0",
          "large": {
            "width": 800,
            "height": 533,
            "url": "https://bn2_0095.livefilestore.com/ASpofswjras9uflkhg/image.jpg"
          }
        }
      ]
    }
  ]
}
```


### Size values

This table defines the possible thumbnail sizes. While you can
request any arbitrary thumbnail size, the defined values are likely to exist and
return a value quickly:

| Name           | Resolution  | Aspect Ratio | Description                                                          |
|:---------------|:------------|:-------------|:---------------------------------------------------------------------|
| `small`        | 96 longest  | Original     | Small, highly compressed thumbnail cropped to a square aspect ratio. |
| `medium`       | 176 longest | Original     | Cropped to the standard item size for the OneDrive web view.         |
| `large`        | 800 longest | Original     | Thumbnail with the longest edge resized to 800 pixels.               |
| `smallSquare`  | 96x96       | Square Crop  | Small square thumbnail                                               |
| `mediumSquare` | 176x176     | Square Crop  | Small square thumbnail                                               |
| `largeSquare`  | 800x800     | Square Crop  | Large square thumbnail                                               |


## Custom thumbnail sizes

In addition to the defined sizes, your app can request a custom thumbnail size
by specifying the dimensions of the thumbnail prefixed with `c`. For example
if you need thumbnails that are 300x400, you can request that size like this:

```http
GET /drive/items/{item-id}/thumbnails?select=c300x400_Crop
```

You can specify the following options after the size of the thumbnail requested:

#### Examples of custom identifiers
| Thumbnail identifier | Resolution             | Aspect ratio | Description                                                                                                                                         |
|:---------------------|:-----------------------|:-------------|:----------------------------------------------------------------------------------------------------------------------------------------------------|
| c300x400             | Bounded by 300x400 box | Original     | Generate a thumbnail that fits inside a 300x400 pixel box, maintaining aspect ratio                                                                 |
| c300x400_Crop        | 300x400                | Cropped      | Generate a thumbnail that is 300x400 pixels. This works by resizing the image to fill the 300x400 box and cropping whatever spills outside the box. |


## Upload a custom thumbnail on an item

This request allows your app to upload a custom thumbnail, which persists with the file
even if the file's contents is updated, to any item that has the `file` facet.   If a
custom uploaded thumbnail is already set, then this request will overwrite that existing
custom uploaded thumbnail.

### HTTP request

```
PUT /drive/items/{item-id}/thumbnails/0/source/content
Content-Type: image/jpeg

The contents of the image goes here.
```

### Response
```http
HTTP/1.1 200 OK
```

If successful, this call returns a `200 OK` response to indicate that custom thumbnail was
upload successfully. In the response, the `Content-Location` and the `Location` response
header will return the URL to that custom thumbnail.



## Determine if a custom uploaded thumbnail exists

To determine if a custom uploaded thumbnail exists on a file, look for the `source` property
on the thumbnail set. If it has a value, then the value represents the custom uploaded
thumbnail. If it is not present, then no custom uploaded thumbnail exists.

<!-- { "blockType": "request", "name": "get-custom-thumbnail" } -->
```
GET /drive/items/{item-id}/?expand=thumbnails(select=id,large,medium,small,source)
```
### Response
<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->
```http
HTTP/1.1 200 OK

{
   "thumbnails":[
      {
         "id":"0",
         "large":{
            "height":800,
            "url":"https://dhbkba-sn3302.files.1drv.com/y2mfq7dB...IlE9xeFMPb0jZMt7SI",
            "width":753
         },
         "medium":{
            "height":176,
            "url":"https://dhbkba-sn3302.files.1drv.com/y2m...Gx3-VnOqMmoW4l15cjX9ADw",
            "width":166
         },
         "small":{
            "height":96,
            "url":"https://dhbkba-sn3302.files.1drv.com/y2m2T1...SLCIKpScctlzybSdNXxE",
            "width":90
         },
         "source":{
            "height":500,
            "url":"https://dhbkba-sn3302.files.1drv.com/y2m2T1...89mxla9x7OeLhMdbIteg",
            "width":500
         }
      }
   ]
}
```
**Note** In OneDrive for Business:

* Custom thumbnails are not available.
* Using these calls to expand the thumbnails collection will not work:

`GET /drive/root:/{item-path}?expand=children(expand=thumbnails)`

`GET /drive/items/{item-id}/children?expand=thumbnails`

For more info about thumbnails, see [Thumbnails for an item on OneDrive](https://dev.onedrive.com/items/thumbnails.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get metadata and content for thumbnails of multiple sizes for OneDrive items.",
  "keywords": "thumbnail,content,download,sizes",
  "section": "documentation",
  "tocPath": "Items/Thumbnails"
} -->
