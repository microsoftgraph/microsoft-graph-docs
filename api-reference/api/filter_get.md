# Get filter

Retrieve the properties and relationships of filter object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /drive/root/workbook/tables/<id>/columns/<id>/filter
GET /me/drive/root/workbook/tables/<id>/columns/<id>/filter
GET /workbooks/<id>/workbook/tables/<id>/columns/<id>/filter
```
### Optional query parameters
This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [filter](../resources/filter.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_filter"
}-->
```http
GET https://graph.microsoft.com/beta/drive/root/workbook/tables/<id>/columns/<id>/filter
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.filter"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 337

{
  "criteria": {
    "color": "color-value",
    "criterion1": "criterion1-value",
    "criterion2": "criterion2-value",
    "dynamicCriteria": "dynamicCriteria-value",
    "filterOn": "filterOn-value",
    "icon": {
      "index": 99,
      "set": "set-value"
    },
    "operator": "operator-value",
    "values": "values-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get filter",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->