# Get rangeFormat

Retrieve the properties and relationships of rangeformat object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format
GET /drive/root/workbook/names/<_Id>/rangeFunctionReturnSet/format
GET /drive/root/workbook/worksheets/<id>/cellFunctionReturnSet/format
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
If successful, this method returns a `200 OK` response code and [rangeFormat](../resources/rangeformat.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_rangeformat"
}-->
```http
GET https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.rangeformat"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 166

{
  "columnWidth": 99,
  "horizontalAlignment": "horizontalAlignment-value",
  "rowHeight": 99,
  "verticalAlignment": "verticalAlignment-value",
  "wrapText": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get rangeFormat",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->