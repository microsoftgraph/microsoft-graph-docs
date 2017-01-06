# Create Chart

Use this API to create a new Chart.
## Prerequisites
One of the following **permissions** is required to execute this API: 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/worksheets(<id|name>)/charts/

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|


## Request body
In the request body, supply a JSON representation of [Chart](../resources/chart.md) object.


## Response
If successful, this method returns `201, Created` response code and [Chart](../resources/chart.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chart_from_worksheet"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/worksheets(<id|name>)/charts
Content-type: application/json
Content-length: 52

{
  "id": "id-value",
  "height": 99,
  "left": 99
}
```
In the request body, supply a JSON representation of [Chart](../resources/chart.md) object.
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
Content-length: 52

{
  "id": "id-value",
  "height": 99,
  "left": 99
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create Chart",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->