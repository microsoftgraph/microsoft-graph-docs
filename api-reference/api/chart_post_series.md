# Create chartSeries

Use this API to create a new chartSeries.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/worksheets/<id>/charts/<id>/series
POST /me/drive/root/workbook/worksheets/<id>/charts/<id>/series
POST /workbooks/<id>/workbook/worksheets/<id>/charts/<id>/series

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [chartSeries](../resources/chartseries.md) object.


### Response
If successful, this method returns `201, Created` response code and [chartSeries](../resources/chartseries.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chartseries_from_chart"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/worksheets/<id>/charts/<id>/series
Content-type: application/json
Content-length: 26

{
  "name": "name-value"
}
```
In the request body, supply a JSON representation of [chartSeries](../resources/chartseries.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chartseries"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 26

{
  "name": "name-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create chartSeries",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->