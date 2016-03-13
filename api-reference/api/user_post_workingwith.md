# Create user

Use this API to create a new user.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/workingWith
POST /users/<id>/workingWith
POST /drive/root/createdByUser/workingWith

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [user](../resources/user.md) object.


### Response
If successful, this method returns `201, Created` response code and [user](../resources/user.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_user_from_user"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/workingWith
Content-type: application/json
Content-length: 551

{
  "user": {
    "accountEnabled": true,
    "assignedLicenses": [
      {
        "disabledPlans": [
          "disabledPlans-value"
        ],
        "skuId": "skuId-value"
      }
    ],
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
    "companyName": "companyName-value"
  }
}
```
In the request body, supply a JSON representation of [user](../resources/user.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 551

{
  "user": {
    "accountEnabled": true,
    "assignedLicenses": [
      {
        "disabledPlans": [
          "disabledPlans-value"
        ],
        "skuId": "skuId-value"
      }
    ],
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
    "companyName": "companyName-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create user",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->