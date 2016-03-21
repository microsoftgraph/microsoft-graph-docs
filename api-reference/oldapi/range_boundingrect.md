# range: boundingRect


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/rangeFunctionReturnSet/boundingRect(anotherRange=anotherRange-value)
POST /drive/root/workbook/names/<_Id>/rangeFunctionReturnSet/boundingRect(anotherRange=anotherRange-value)
POST /drive/root/workbook/worksheets/<id>/cellFunctionReturnSet/boundingRect(anotherRange=anotherRange-value)

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
|anotherRange|string||

### Response
If successful, this method returns `200, OK` response code and [range](../resources/range.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "range_boundingrect"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/rangeFunctionReturnSet/boundingRect
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.range"
} -->
```http
HTTP/1.1 200 OK
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
  "description": "range: boundingRect",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->