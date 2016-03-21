# Get chartAxis

Retrieve the properties and relationships of chartaxis object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive/root/workbook/worksheets/<id>/charts/<id>/axes/valueAxis
GET /drive/root/workbook/worksheets/<id>/charts/<id>/axes/seriesAxis
GET /drive/root/workbook/worksheets/<id>/charts/<id>/axes/categoryAxis
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [chartAxis](../resources/chartaxis.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_chartaxis"
}-->
```http
GET https://graph.microsoft.com/beta/drive/root/workbook/worksheets/<id>/charts/<id>/axes/valueAxis
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chartaxis"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 130

{
  "majorUnit": "majorUnit-value",
  "maximum": "maximum-value",
  "minimum": "minimum-value",
  "minorUnit": "minorUnit-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get chartAxis",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->