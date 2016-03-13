# Create multiValueLegacyExtendedProperty

Use this API to create a new multiValueLegacyExtendedProperty.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/<id>/threads/<id>/posts/<id>/multiValueExtendedProperties
POST /me/joinedGroups/<id>/threads/<id>/posts/<id>/multiValueExtendedProperties
POST /users/<id>/joinedGroups/<id>/threads/<id>/posts/<id>/multiValueExtendedProperties

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) object.


### Response
If successful, this method returns `201, Created` response code and [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_multivaluelegacyextendedproperty_from_post"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/<id>/threads/<id>/posts/<id>/multiValueExtendedProperties
Content-type: application/json
Content-length: 38

{
  "value": [
    "value-value"
  ]
}
```
In the request body, supply a JSON representation of [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multivaluelegacyextendedproperty"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 74

{
  "value": [
    "value-value"
  ],
  "propertyId": "propertyId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create multiValueLegacyExtendedProperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->