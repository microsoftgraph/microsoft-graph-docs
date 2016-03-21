# rangeSort: apply


### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/root/workbook/tables/<id>/rangeFunctionReturnSet/sort/apply
POST /drive/root/workbook/names/<_Id>/rangeFunctionReturnSet/sort/apply
POST /drive/root/workbook/worksheets/<id>/cellFunctionReturnSet/sort/apply

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
|fields|sortField||
|matchCase|boolean||
|hasHeaders|boolean||
|orientation|string||
|method|string||

### Response
If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "rangesort_apply"
}-->
```http
POST https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/rangeFunctionReturnSet/sort/apply
Content-type: application/json
Content-length: 358

{
  "fields": [
    {
      "ascending": true,
      "color": "color-value",
      "dataOption": "dataOption-value",
      "icon": {
        "index": 99,
        "set": "set-value"
      },
      "key": 99,
      "sortOn": "sortOn-value"
    }
  ],
  "matchCase": true,
  "hasHeaders": true,
  "orientation": "orientation-value",
  "method": "method-value"
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
  "description": "rangeSort: apply",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->