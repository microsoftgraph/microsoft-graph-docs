# rangeBorder: itemAt


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format/borders/<id>/itemAt(index=index-value)
POST /drive/root/workbook/names/<_Id>/rangeFunctionReturnSet/format/borders/<id>/itemAt(index=index-value)
POST /drive/root/workbook/worksheets/<id>/cellFunctionReturnSet/format/borders/<id>/itemAt(index=index-value)

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request URL, provide following query parameters with values.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int32||

### Response
If successful, this method returns `200, OK` response code and [rangeBorder](../resources/rangeborder.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "rangeborder_itemat"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format/borders/<id>/itemAt
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.rangeborder"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 136

{
  "color": "color-value",
  "id": "id-value",
  "sideIndex": "sideIndex-value",
  "style": "style-value",
  "weight": "weight-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rangeBorder: itemAt",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->