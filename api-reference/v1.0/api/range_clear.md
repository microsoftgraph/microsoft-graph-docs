# Range: clear

Clear range values, format, fill, border, etc.
## Prerequisites
One of the following **permissions** is required to execute this API: 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/names(<name>)/range/clear
POST /workbook/worksheets(<id|name>)/range(<address>)/clear
POST /workbook/tables(<id|name>)/columns(<id|name>)/range/clear

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|


## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|applyTo|string|Optional. Determines the type of clear action.  Possible values are: `All`, `Formats`, `Contents`.|

## Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "range_clear"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/names(<name>)/range/clear
Content-type: application/json
Content-length: 32

{
  "applyTo": "applyTo-value"
}
```

##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.none"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Range: clear",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->