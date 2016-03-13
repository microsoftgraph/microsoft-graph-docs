# List singleValueExtendedProperties

Retrieve a list of singlevaluelegacyextendedproperty objects.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/contacts/<id>/singleValueExtendedProperties
GET /users/<id>/contacts/<id>/singleValueExtendedProperties
GET /me/contactFolders/<id>/contacts/<id>/singleValueExtendedProperties
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$count|none|The count of related entities can be requested by specifying the $count query option.|
|$expand|string|Comma-separated list of relationships to expand and include in the response. See relationships table of [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) for supported names. |
|$filter|string|Filter string that lets you filter the response based on a set of criteria.|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|
|$select|string|Comma-separated list of properties to include in the response.|
|$skip|int|The number of items to skip in a result set.|
|$skipToken|string|Paging token that is used to get the next set of results.|
|$top|int|The number of items to return in a result set.|

### Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_singlevalueextendedproperties"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/contacts/<id>/singleValueExtendedProperties
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.singlevaluelegacyextendedproperty",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 101

{
  "value": [
    {
      "value": "value-value",
      "propertyId": "propertyId-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List singleValueExtendedProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->