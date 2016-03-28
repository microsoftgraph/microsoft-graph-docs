# Get planTaskBoard

Retrieve the properties and relationships of plantaskboard object.
### Prerequisites
One of the following **scopes** is required to execute this API:
 
Group.Read.All, Group.ReadWrite.All

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /plans/<id>/bucketTaskBoard
GET /plans/<id>/progressTaskBoard
GET /plans/<id>/assignedToTaskBoard
```
### Optional query parameters
None

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Value should be set to "Bearer (access-token)" |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [planTaskBoard](../resources/plantaskboard.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_plantaskboard"
}-->
```http
GET https://graph.microsoft.com/beta/plans/<id>/bucketTaskBoard
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plantaskboard"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 46

{
  "type": "type-value",
  "id": "id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get planTaskBoard",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->