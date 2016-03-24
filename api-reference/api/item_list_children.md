# List children of a driveItem

Items with the folder property may contain child items. This API
lists the contents of a **driveItem's** `children` collection using either the
root driveItem, driveItem ID or path.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.ReadWrite

### HTTP request
```http
GET /me/drive/root/children
GET /me/drive/items/{item-id}/children
GET /me/drive/root:/{item-path}:/children
```

### Optional query parameters
This method supports the [OData Query
Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help
customize the response.

### Request headers

| Name          | Type   | Description                                                                                                                                              |
|:--------------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| Authorization | string | Bearer {token}. Required.                                                                                                                                |
| if-none-match | String | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |

### Request body
Do not supply a request body for this method.

### Example
Here is an example of how to call this API.

##### Request
Here is an example request to return the driveItems at the root of the signed-in
users OneDrive.

<!-- {
  "blockType": "request",
  "name": "get_children"
}-->
```http
GET /me/drive/root/children
```

### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {"name": "myfile.jpg", "size": 2048, "file": {} },
    {"name": "Documents", "folder": { "childCount": 4} },
    {"name": "Photos", "folder": { "childCount": 203} },
    {"name": "my sheet(1).xlsx", "size": 197 }
  ],
  "@odata.nextLink": "https://..."
}
```

**Note:** If a collection exceeds the default page size (200 items), the
**@odata.nextLink** property is returned in the response to indicate more
items are available and provide the request URL for the next page of items.

You can control the page size through [optional query string parameters](https://dev.onedrive.com/odata/optional-query-parameters.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List the children of an item.",
  "keywords": "list,children,collection",
  "section": "documentation",
  "tocPath": "OneDrive/DriveItem/List children"
} -->
