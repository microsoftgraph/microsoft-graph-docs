# Worksheet: UsedRange

The used range is the smallest range that encompasses any cells that have a value or formatting assigned to them. If the worksheet is blank, this function will return the top left cell.
## Prerequisites
The following **scopes** are required to execute this API: 

    * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /workbook/worksheets/{id|name}/UsedRange

```

## Optional request parameter
In the request URL, provide an optional query parameter.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|valuesOnly|Boolean|Optional. Considers only cells with values as used cells (ignores formatting).|


## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|

## Response
If successful, this method returns `200, OK` response code and [Range](../resources/range.md) object in the response body.

## Example
Here is an example that shows how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "worksheet_usedrange"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/worksheets/{id|name}/UsedRange(valuesOnly=true)
Content-type: application/json

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
Content-length: 169

{
  "address": "address-value",
  "addressLocal": "addressLocal-value",
  "cellCount": 99,
  "columnCount": 99,
  "columnIndex": 99,
  "valueTypes": "valueTypes-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Worksheet: UsedRange",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
