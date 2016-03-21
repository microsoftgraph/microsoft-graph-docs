# Get an item

Retrieve the metadata for an item on OneDrive by path or ID.

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive/root
GET /drive/items/{item-id}
GET /drive/root:/{item-path}
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.
### Request headers

| Name            | Value | Description         |
|:----------------|:------|:------------------------|
| if-none-match | String  | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |
| Authorization  | string  | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [item](../resources/driveitem.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_item"
}-->
```
GET /drive/items/{item-id}
```

##### Response
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
  "name": "example.xlsx",
  "eTag": "etag",
  "cTag": "etag",
  "createdBy": { "user": { "id": "1234", "displayName": "Ryan Gregg" } },
  "createdDateTime": "datetime",
  "lastModifiedBy": { "user": { "id": "1234", "displayName": "Ryan Gregg" } },
  "lastModifiedDateTime": "datetime",
  "size": 1234,
  "webUrl": "http://onedrive.com/...",
  "parentReference": { "driveId": "12345", "id": "root", "path": "/drive/root:" },
  "folder": { "childCount": 4 }
}
```

### Notes

You can use the [`expand`](https://dev.onedrive.com/odata/optional-query-parameters.htm#expanding-collections) query string parameter to include the children of an item in the same call as retrieving the metadata of an item.

## HEAD requests

In most cases, a HEAD request will behave the same way as a GET request. There are a couple differences:

1. HEAD requests will only return the corresponding GET request's headers. This is standard practice for a HEAD response.
2. HEAD requests will not automatically provision a
[special folder](../resources/specialfolder.md). Instead, if a special folder is not present, a `404` error will be returned.

In this example, you can see that requesting the root of your OneDrive will respond with simply `200 OK`.

### HTTP request

<!-- {"blockType": "request", "name": "head-root"} -->
```
HEAD /drive/root
Accept: application/json
```

### Response

<!-- {"blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true} -->
```
HTTP/1.1 200 OK
Content-Type: application/json
```

## More resources

For more info, see [Get metadata for a OneDrive item](https://dev.onedrive.com/items/get.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
