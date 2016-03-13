# Create organization

Use this API to create a new organization.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /organization

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [organization](../resources/organization.md) object.


### Response
If successful, this method returns `201, Created` response code and [organization](../resources/organization.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_organization_from_organization"
}-->
```http
POST https://graph.microsoft.com/v1.0/organization
Content-type: application/json
Content-length: 465

{
  "organization": {
    "assignedPlans": [
      {
        "assignedDateTime": "datetime-value",
        "capabilityStatus": "capabilityStatus-value",
        "service": "service-value",
        "servicePlanId": "servicePlanId-value"
      }
    ],
    "businessPhones": [
      "businessPhones-value"
    ],
    "city": "city-value",
    "country": "country-value",
    "countryLetterCode": "countryLetterCode-value",
    "displayName": "displayName-value"
  }
}
```
In the request body, supply a JSON representation of [organization](../resources/organization.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organization"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 465

{
  "organization": {
    "assignedPlans": [
      {
        "assignedDateTime": "datetime-value",
        "capabilityStatus": "capabilityStatus-value",
        "service": "service-value",
        "servicePlanId": "servicePlanId-value"
      }
    ],
    "businessPhones": [
      "businessPhones-value"
    ],
    "city": "city-value",
    "country": "country-value",
    "countryLetterCode": "countryLetterCode-value",
    "displayName": "displayName-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->