# Track changes for an item and its children

Retrieve the current state of an item and its children and track changes over time.

## Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read
  * Files.Readwrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/root/delta
GET /me/drive/items/{item-id}/delta
GET /me/drive/root:/{item-path}:/delta
```

### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers

| Name          | Value  | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [driveItem](../resources/driveitem.md) collection in the response body.

### Example
Here is an example of how to call this API.

##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_item_delta"
}-->
```http
GET /drive/root/delta
```

##### Response
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

  ]
}
```


<!-- {
  "type": "#page.annotation",
  "description": "Get item delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
