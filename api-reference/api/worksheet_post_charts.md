# Create chart

Use this API to create a new chart.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/worksheets/<id>/charts
POST /me/drive/root/workbook/worksheets/<id>/charts
POST /workbooks/<id>/workbook/worksheets/<id>/charts

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [chart](../resources/chart.md) object.


### Response
If successful, this method returns `201, Created` response code and [chart](../resources/chart.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chart_from_worksheet"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/worksheets/<id>/charts
Content-type: application/json
Content-length: 84

{
  "height": 99,
  "left": 99,
  "name": "name-value",
  "top": 99,
  "width": 99
}
```
In the request body, supply a JSON representation of [chart](../resources/chart.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chart"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 104

{
  "height": 99,
  "id": "id-value",
  "left": 99,
  "name": "name-value",
  "top": 99,
  "width": 99
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create chart",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->