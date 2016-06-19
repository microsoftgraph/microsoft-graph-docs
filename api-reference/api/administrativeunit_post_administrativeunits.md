# Create administrativeUnit

Use this API to create a new [administrativeUnit](../resources/administrativeunit.md).
### Prerequisites
The following **scopes** are required to execute this API: *Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /administrativeUnits

```
### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <token>. Required.|
### Request body
In the request body, supply a JSON representation of [administrativeUnit](../resources/administrativeunit.md) object.


### Response
If successful, this method returns `201, Created` response code and [administrativeUnit](../resources/administrativeunit.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_administrativeunit_from_administrativeunits"
}-->
```http
POST https://graph.microsoft.com/beta/administrativeUnits
Content-type: application/json
Content-length: 150

{
  "administrativeUnit": {
    "displayName": "displayName-value",
    "description": "description-value",
    "visibility": "visibility-value"
  }
}
```
In the request body, supply a JSON representation of [administrativeUnit](../resources/administrativeunit.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.administrativeunit"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 172

{
  "administrativeUnit": {
    "displayName": "displayName-value",
    "description": "description-value",
    "visibility": "visibility-value",
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create administrativeUnit",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->