# chart: image


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/worksheets/<id>/charts/<id>/image(width=width-value, height=height-value, fittingMode=fittingMode-value)
POST /me/drive/root/workbook/worksheets/<id>/charts/<id>/image(width=width-value, height=height-value, fittingMode=fittingMode-value)
POST /workbooks/<id>/workbook/worksheets/<id>/charts/<id>/image(width=width-value, height=height-value, fittingMode=fittingMode-value)

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
|width|int32||
|height|int32||
|fittingMode|string||

### Response
If successful, this method returns `200, OK` response code and string object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "chart_image"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/worksheets/<id>/charts/<id>/image
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 29

{
  "value": "string-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chart: image",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->