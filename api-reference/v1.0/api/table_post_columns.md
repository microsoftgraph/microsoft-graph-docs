# Create TableColumn

Use this API to create a new TableColumn.
## Prerequisites
The following **scopes** are required to execute this API: 

    * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/tables/{id|name}/columns
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |


## Request body
In the request body, supply a JSON representation of [TableColumn](../resources/tablecolumn.md) object.

## Response

If successful, this method returns `201, Created` response code and [TableColumn](../resources/tablecolumn.md) object in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_tablecolumn_from_table"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/{id|name}/columns
Content-type: application/json
Content-length: 81

{
  "id": 99,
  "name": "name-value",
  "index": 99,
  "values": "values-value"
}
```
In the request body, supply a JSON representation of [TableColumn](../resources/tablecolumn.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tableColumn"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 81

{
  "id": 99,
  "name": "name-value",
  "index": 99,
  "values": "values-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create TableColumn",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->