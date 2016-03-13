# Update tablesort

Update the properties of tablesort object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /drive/root/workbook/tables/<id>/sort
PATCH /me/drive/root/workbook/tables/<id>/sort
PATCH /workbooks/<id>/workbook/tables/<id>/sort
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
|fields|sortField||
|matchCase|boolean||
|method|string||

### Response
If successful, this method returns a `200 OK` response code and updated [tableSort](../resources/tablesort.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_tablesort"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/drive/root/workbook/tables/<id>/sort
Content-type: application/json
Content-length: 298

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
  "method": "method-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tablesort"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 298

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
  "method": "method-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update tablesort",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->