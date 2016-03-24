# Get permission

Retrieve the properties and relationships of permission object.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.Read

### HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/<item-id>/permissions/<id>
GET /me/drive/root:/<item-path>:/permissions/<id>
GET /groups/<group-id>/drive/items/<item-id>/permissions/<id>
```
### Optional query parameters
This method supports the [OData Query
Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help
customize the response.


### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and [permission](../resources/permission.md) object in the response body.

### Example

##### Request

Here is an example of the request to access a permission on the root folder.

<!-- {
  "blockType": "request",
  "name": "get_permission"
}-->
```http
GET /me/drive/root/permissions/<id>
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 762

{
  "grantedTo": {
    "user": {
      "displayName": "Ryan Gregg",
      "id": "efee1b77-fb3b-4f65-99d6-274c11914d12"
    }
  },
  "id": "1",
  "roles": [ "write" ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get permission",
  "keywords": "",
  "section": "documentation",
  "tocPath": "OneDrive/Item/Get permission"
}-->
