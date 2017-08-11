# Filter: apply

Apply the given filter criteria on the given column.
## Prerequisites
The following **scopes** are required to execute this API: 

    * Files.ReadWrite

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/tables/{id|name}/columns/{id|name}/filter/apply
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/filter/apply

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |


## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|criteria|FilterCriteria|The criteria to apply.|

## Response

If successful, this method returns `200, OK` response code. It does not return anything in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "filter_apply"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/filter/apply
Content-type: application/json
Content-length: 321

{
  "criteria": {
    "criterion1": "criterion1-value",
    "criterion2": "criterion2-value",
    "color": "color-value",
    "operator": {
    },
    "icon": {
      "set": "set-value",
      "index": 99
    },
    "dynamicCriteria": "dynamicCriteria-value",
    "values": {
    },
    "filterOn": "filterOn-value"
  }
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
  "description": "Filter: apply",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->