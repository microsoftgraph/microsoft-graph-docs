# Create singleValueLegacyExtendedProperty

Use this API to create a new singleValueLegacyExtendedProperty.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/calendar/singleValueExtendedProperties
POST /users/<id>/calendar/singleValueExtendedProperties
POST /groups/<id>/calendar/singleValueExtendedProperties

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object.


### Response
If successful, this method returns `201, Created` response code and [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_singlevaluelegacyextendedproperty_from_calendar"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/calendar/singleValueExtendedProperties
Content-type: application/json
Content-length: 28

{
  "value": "value-value"
}
```
In the request body, supply a JSON representation of [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.singlevaluelegacyextendedproperty"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 64

{
  "value": "value-value",
  "propertyId": "propertyId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create singleValueLegacyExtendedProperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->