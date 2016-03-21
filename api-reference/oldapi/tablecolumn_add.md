# tableColumn: add


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/columns/<id>/add
POST /me/drive/root/workbook/tables/<id>/columns/<id>/add
POST /workbooks/<id>/workbook/tables/<id>/columns/<id>/add

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int32||
|values|json||

### Response
If successful, this method returns `200, OK` response code and [tableColumn](../resources/tablecolumn.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "tablecolumn_add"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/columns/<id>/add
Content-type: application/json
Content-length: 45

{
  "index": 99,
  "values": "values-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tablecolumn"
} -->
```http
HTTP/1.1 200 OK
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
  "description": "tableColumn: add",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->