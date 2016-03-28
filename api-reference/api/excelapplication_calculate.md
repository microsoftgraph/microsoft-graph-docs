# Application: calculate

Recalculate all currently opened workbooks in Excel.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/application/calculate

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|


### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|calculationType|string|Specifies the calculation type to use.  Possible values are: `Recalculate`, `Full`, `FullRebuild`.|

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "application_calculate"
}-->
```http
POST https://graph.microsoft.com/beta/me/drive/items/<id>/workbook/application/calculate
Content-type: application/json
Content-length: 48

{
  "calculationType": "calculationType-value"
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
  "description": "Application: calculate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->