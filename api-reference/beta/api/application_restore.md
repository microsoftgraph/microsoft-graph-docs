# application: restore


## Prerequisites
One of the following **permissions** is required to execute this API:
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/restore

```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|identifierUris|String||

## Response
If successful, this method returns `200, OK` response code and [application](../resources/application.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "application_restore"
}-->
```http
POST https://graph.microsoft.com/beta/applications/{id}/restore
Content-type: application/json
Content-length: 56

{
  "identifierUris": [
    "identifierUris-value"
  ]
}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 2150

{
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
      "value": "value-value"
    }
  ],
  "availableToOtherTenants": true,
  "displayName": "displayName-value",
  "errorUrl": "errorUrl-value",
  "groupMembershipClaims": "groupMembershipClaims-value",
  "homepage": "homepage-value",
  "identifierUris": [
    "identifierUris-value"
  ],
  "keyCredentials": [
    {
      "customKeyIdentifier": "customKeyIdentifier-value",
      "endDate": "2016-10-19T10:37:00Z",
      "keyId": "keyId-value",
      "startDate": "2016-10-19T10:37:00Z",
      "type": "type-value",
      "usage": "usage-value",
      "value": "value-value"
    }
  ],
  "knownClientApplications": [
    "guid"
  ],
  "mainLogo": "stream",
  "logoutUrl": "logoutUrl-value",
  "oauth2AllowImplicitFlow": true,
  "oauth2AllowUrlPathMatching": true,
  "oauth2Permissions": [
    {
      "adminConsentDescription": "adminConsentDescription-value",
      "adminConsentDisplayName": "adminConsentDisplayName-value",
      "id": "id-value",
      "isEnabled": true,
      "type": "type-value",
      "userConsentDescription": "userConsentDescription-value",
      "userConsentDisplayName": "userConsentDisplayName-value",
      "value": "value-value"
    }
  ],
  "oauth2RequirePostResponse": true,
  "passwordCredentials": [
    {
      "customKeyIdentifier": "customKeyIdentifier-value",
      "endDate": "2016-10-19T10:37:00Z",
      "keyId": "keyId-value",
      "startDate": "2016-10-19T10:37:00Z",
      "value": "value-value"
    }
  ],
  "publicClient": true,
  "replyUrls": [
    "replyUrls-value"
  ],
  "requiredResourceAccess": [
    {
      "resourceAppId": "resourceAppId-value",
      "resourceAccess": [
        {
          "id": "id-value",
          "type": "type-value"
        }
      ]
    }
  ],
  "samlMetadataUrl": "samlMetadataUrl-value",
  "objectType": "objectType-value",
  "objectId": "objectId-value",
  "deletionTimestamp": "2016-10-19T10:37:00Z"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application: restore",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
