# Create oAuth2PermissionGrant

Use this API to create a new oAuth2PermissionGrant.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/<id>/oauth2PermissionGrants

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object.


### Response
If successful, this method returns `201, Created` response code and [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_oauth2permissiongrant_from_serviceprincipal"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/<id>/oauth2PermissionGrants
Content-type: application/json
Content-length: 180

{
  "clientId": "clientId-value",
  "consentType": "consentType-value",
  "expiryTime": "datetime-value",
  "principalId": "principalId-value",
  "resourceId": "resourceId-value"
}
```
In the request body, supply a JSON representation of [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oauth2permissiongrant"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 200

{
  "clientId": "clientId-value",
  "consentType": "consentType-value",
  "expiryTime": "datetime-value",
  "id": "id-value",
  "principalId": "principalId-value",
  "resourceId": "resourceId-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create oAuth2PermissionGrant",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->