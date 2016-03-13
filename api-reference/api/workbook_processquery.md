# workbook: processQuery


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/processQuery
POST /me/drive/root/workbook/processQuery
POST /workbooks/<id>/workbook/processQuery

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
|input|stream||

### Response
If successful, this method returns `200, OK` response code and stream object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "workbook_processquery"
}-->
```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/processQuery
Content-type: application/json
Content-length: 28

{
  "input": "input-value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 29

{
  "value": "stream-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbook: processQuery",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->