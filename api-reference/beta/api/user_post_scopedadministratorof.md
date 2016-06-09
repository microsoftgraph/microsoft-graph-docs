# Create scopedRoleMembership

Use this API to create a new [scopedRoleMembership](../resources/scopedrolemembership.md).
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/scopedAdministratorOf
POST /users/<id>/scopedAdministratorOf
POST /drive/root/createdByUser/scopedAdministratorOf

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [scopedRoleMembership](../resources/scopedrolemembership.md) object.


### Response
If successful, this method returns `201, Created` response code and [scopedRoleMembership](../resources/scopedrolemembership.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_scopedrolemembership_from_user"
}-->
```http
POST https://graph.microsoft.com/beta/me/scopedAdministratorOf
Content-type: application/json
Content-length: 272

{
  "scopedRoleMembership": {
    "roleId": "roleId-value",
    "administrativeUnitId": "administrativeUnitId-value",
    "roleMemberInfo": {
      "id": "id-value",
      "displayName": "displayName-value",
      "userPrincipalName": "userPrincipalName-value"
    }
  }
}
```
In the request body, supply a JSON representation of [scopedRoleMembership](../resources/scopedrolemembership.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.scopedrolemembership"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 294

{
  "scopedRoleMembership": {
    "roleId": "roleId-value",
    "administrativeUnitId": "administrativeUnitId-value",
    "roleMemberInfo": {
      "id": "id-value",
      "displayName": "displayName-value",
      "userPrincipalName": "userPrincipalName-value"
    },
    "id": "id-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create scopedRoleMembership",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->