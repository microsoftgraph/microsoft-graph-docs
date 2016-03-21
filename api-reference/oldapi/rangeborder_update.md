# Update rangeborder

Update the properties of rangeborder object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format/borders/<id>
PATCH /drive/root/workbook/names/<_Id>/rangeFunctionReturnSet/format/borders/<id>
PATCH /drive/root/workbook/worksheets/<id>/cellFunctionReturnSet/format/borders/<id>
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string||
|sideIndex|string||
|style|string||
|weight|string||

### Response
If successful, this method returns a `200 OK` response code and updated [rangeBorder](../resources/rangeborder.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_rangeborder"
}-->
```http
PATCH https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/rangeFunctionReturnSet/format/borders/<id>
Content-type: application/json
Content-length: 116

{
  "color": "color-value",
  "sideIndex": "sideIndex-value",
  "style": "style-value",
  "weight": "weight-value"
}
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
  "description": "Update rangeborder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->