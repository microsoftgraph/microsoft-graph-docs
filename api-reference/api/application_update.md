# Update application

Update the properties of application object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/<id>
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
|addIns|addIn||
|appId|string||
|appRoles|appRole||
|availableToOtherOrganizations|boolean||
|displayName|string||
|errorUrl|string||
|groupMembershipClaims|string||
|homepage|string||
|identifierUris|string||
|keyCredentials|keyCredential||
|knownClientApplications|guid||
|logoutUrl|string||
|mainLogo|stream||
|oauth2AllowImplicitFlow|boolean||
|oauth2AllowUrlPathMatching|boolean||
|oauth2Permissions|oAuth2Permission||
|oauth2RequirePostResponse|boolean||
|passwordCredentials|passwordCredential||
|publicClient|boolean||
|recordConsentConditions|string||
|replyUrls|string||
|requiredResourceAccess|requiredResourceAccess||
|samlMetadataUrl|string||

### Response
If successful, this method returns a `200 OK` response code and updated [application](../resources/application.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_application"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/<id>
Content-type: application/json
Content-length: 636

{
  "addIns": [
    {
      "id": "id-value",
      "type": "type-value",
      "properties": [
        {
          "key": "key-value",
          "value": "value-value"
        }
      ]
    }
  ],
  "appId": "appId-value",
  "appRoles": [
    {
      "allowedMemberTypes": [
        "allowedMemberTypes-value"
      ],
      "description": "description-value",
      "displayName": "displayName-value",
      "id": "id-value",
      "isEnabled": true,
      "origin": "origin-value",
      "value": "value-value"
    }
  ],
  "availableToOtherOrganizations": true,
  "displayName": "displayName-value",
  "errorUrl": "errorUrl-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 636

{
  "addIns": [
    {
      "id": "id-value",
      "type": "type-value",
      "properties": [
        {
          "key": "key-value",
          "value": "value-value"
        }
      ]
    }
  ],
  "appId": "appId-value",
  "appRoles": [
    {
      "allowedMemberTypes": [
        "allowedMemberTypes-value"
      ],
      "description": "description-value",
      "displayName": "displayName-value",
      "id": "id-value",
      "isEnabled": true,
      "origin": "origin-value",
      "value": "value-value"
    }
  ],
  "availableToOtherOrganizations": true,
  "displayName": "displayName-value",
  "errorUrl": "errorUrl-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update application",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->