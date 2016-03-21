# Update user

Update the properties of user object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me
PATCH /users/<id>
PATCH /drive/root/createdByUser
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
|aboutMe|string||
|accountEnabled|boolean||
|assignedLicenses|assignedLicense||
|assignedPlans|assignedPlan||
|birthday|dateTimeOffset||
|businessPhones|string||
|city|string||
|companyName|string||
|country|string||
|department|string||
|displayName|string||
|givenName|string||
|hireDate|dateTimeOffset||
|interests|string||
|jobTitle|string||
|mail|string||
|mailNickname|string||
|mailboxSettings|mailboxSettings||
|mobilePhone|string||
|mySite|string||
|officeLocation|string||
|onPremisesImmutableId|string||
|onPremisesLastSyncDateTime|dateTimeOffset||
|onPremisesSecurityIdentifier|string||
|onPremisesSyncEnabled|boolean||
|passwordPolicies|string||
|passwordProfile|passwordProfile||
|pastProjects|string||
|postalCode|string||
|preferredLanguage|string||
|preferredName|string||
|provisionedPlans|provisionedPlan||
|proxyAddresses|string||
|responsibilities|string||
|schools|string||
|skills|string||
|state|string||
|streetAddress|string||
|surname|string||
|usageLocation|string||
|userPrincipalName|string||
|userType|string||

### Response
If successful, this method returns a `200 OK` response code and updated [user](../resources/user.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_user"
}-->
```http
PATCH https://graph.microsoft.com/beta/me
Content-type: application/json
Content-length: 491

{
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
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 491

{
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update user",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->