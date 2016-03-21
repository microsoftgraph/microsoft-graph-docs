# Download an item

Download the contents for an item.

To download the contents for a OneDrive item, insert `/me` in front of the request. For example, `/me/drive/items/{item-id}/content`.

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive/items/{item-id}/content
GET /drive/root:/{item-path and filename}:/content
```

### Request headers

| Name            | Value | Description         |
|:----------------|:------|:------------------------|
| if-none-match | String  | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |
| range  | range  | Range of bytes returned in the response. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [item](../resources/driveitem.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.

```
GET /drive/items/{item-id}/content
```

##### Response
Returns a `302 Found` response redirecting to a pre-authenticated download URL for the file. This is the same URL available through the **@microsoft.graph.downloadUrl** property on an item.
To download the contents of the file your application will need to follow the Location header in the response.  
Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an Authorization header to download.  

### Range downloads

To download a partial range of an item, you use the Range HTTP header as specified in RFC 2616. Note that you must append the Range header to the HTTP request after receiving the `302 Found`.

```
GET https://b0mpua-by3301.files.1drv.com/y23vmag
Range: bytes=0-1023
```

This will return an `HTTP 206 Partial Content` response with the request range of bytes from the file. If the range cannot be generated the Range header may be ignored and an `HTTP 200` response would be returned with the full contents of the file.

```
HTTP/1.1 206 Partial Content
Content-Range: bytes 0-1023/2048

<first 1024 bytes of file>
```

## Notes  

When you download an item's content by requesting its /content property, you must provide the Authorization header, in order to be granted access to download. The response would normally return a `302` redirect to the URL where the file can be downloaded from. This URL is pre-authenticated and does not require the Authorization header. However, if you specify an Authorization header to this download URL when downloading an item's content from OneDrive for Business, you will receive a `401` error.  

## More resources

For more info, see [Download a OneDrive item contents](https://dev.onedrive.com/items/download.htm).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Download item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  -->
