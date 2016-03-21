# Update nameditem

Update the properties of nameditem object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root/workbook/names/<_Id>
PATCH /me/drive/root/workbook/names/<_Id>
PATCH /workbooks/<id>/workbook/names/<_Id>
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
|name|string||
|type|string||
|value|json||
|visible|boolean||

### Response
If successful, this method returns a `200 OK` response code and updated [namedItem](../resources/nameditem.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_nameditem"
}-->
```http
PATCH https://graph.microsoft.com/beta/drive/root/workbook/names/<_Id>
Content-type: application/json
Content-length: 95

{
  "name": "name-value",
  "type": "type-value",
  "value": "value-value",
  "visible": true
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.nameditem"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 117

{
  "name": "name-value",
  "type": "type-value",
  "value": "value-value",
  "visible": true,
  "_Id": "_Id-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update nameditem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->