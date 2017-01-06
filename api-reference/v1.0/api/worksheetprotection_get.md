# Get WorksheetProtection

Retrieve the properties and relationships of worksheetprotection object.
## Prerequisites
One of the following **permissions** is required to execute this API: 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /workbook/worksheets(<id|name>)/protection
```
## Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|


## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [WorksheetProtection](../resources/worksheetprotection.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_worksheetprotection"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/worksheets(<id|name>)/protection
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.worksheetProtection"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 23

{
  "protected": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get WorksheetProtection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->