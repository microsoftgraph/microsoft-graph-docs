# Get workbookPivotTable

Retrieve the properties and relationships of workbookPivotTable object.

## Prerequisites
The following **scopes** are required to execute this API: _Files.Read,
Files.ReadWrite_

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/root/workbook/worksheets/{id}/pivotTables/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [workbookPivotTable](../resources/workbookpivottable.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_workbookpivottable"
}-->
```http
GET https://graph.microsoft.com/v1.0/drive/root/workbook/worksheets/{id}/pivotTables/{id}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookPivotTable"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 46

{
  "id": "id-value",
  "name": "name-value"
}
```
