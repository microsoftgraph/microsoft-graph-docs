# Update chartaxis

Update the properties of chartaxis object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root/workbook/worksheets/<id>/charts/<id>/axes/valueAxis
PATCH /drive/root/workbook/worksheets/<id>/charts/<id>/axes/seriesAxis
PATCH /drive/root/workbook/worksheets/<id>/charts/<id>/axes/categoryAxis
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|majorUnit|json||
|maximum|json||
|minimum|json||
|minorUnit|json||

### Response
If successful, this method returns a `200 OK` response code and updated [chartAxis](../resources/chartaxis.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_chartaxis"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/drive/root/workbook/worksheets/<id>/charts/<id>/axes/valueAxis
Content-type: application/json
Content-length: 130

{
  "majorUnit": "majorUnit-value",
  "maximum": "maximum-value",
  "minimum": "minimum-value",
  "minorUnit": "minorUnit-value"
}
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
  "description": "Update chartaxis",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->