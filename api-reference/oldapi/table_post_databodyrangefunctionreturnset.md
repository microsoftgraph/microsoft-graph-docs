# Create range

Use this API to create a new range.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/dataBodyRangeFunctionReturnSet
POST /me/drive/root/workbook/tables/<id>/dataBodyRangeFunctionReturnSet
POST /workbooks/<id>/workbook/tables/<id>/dataBodyRangeFunctionReturnSet

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [range](../resources/range.md) object.


### Response
If successful, this method returns `201, Created` response code and [range](../resources/range.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_range_from_table"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/dataBodyRangeFunctionReturnSet
Content-type: application/json
Content-length: 157

{
  "address": "address-value",
  "addressLocal": "addressLocal-value",
  "cellCount": 99,
  "columnCount": 99,
  "columnHidden": true,
  "columnIndex": 99
}
```
In the request body, supply a JSON representation of [range](../resources/range.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.range"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 157

{
  "address": "address-value",
  "addressLocal": "addressLocal-value",
  "cellCount": 99,
  "columnCount": 99,
  "columnHidden": true,
  "columnIndex": 99
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create range",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->