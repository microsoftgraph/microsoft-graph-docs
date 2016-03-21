# Create tableColumn

Use this API to create a new tableColumn.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/columns
POST /me/drive/root/workbook/tables/<id>/columns
POST /workbooks/<id>/workbook/tables/<id>/columns

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [tableColumn](../resources/tablecolumn.md) object.


### Response
If successful, this method returns `201, Created` response code and [tableColumn](../resources/tablecolumn.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_tablecolumn_from_table"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/columns
Content-type: application/json
Content-length: 69

{
  "index": 99,
  "name": "name-value",
  "values": "values-value"
}
```
In the request body, supply a JSON representation of [tableColumn](../resources/tablecolumn.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tablecolumn"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 89

{
  "id": "id-value",
  "index": 99,
  "name": "name-value",
  "values": "values-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create tableColumn",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->