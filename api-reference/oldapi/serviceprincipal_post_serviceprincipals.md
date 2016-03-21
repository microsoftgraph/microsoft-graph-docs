# Create servicePrincipal

Use this API to create a new servicePrincipal.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [servicePrincipal](../resources/serviceprincipal.md) object.


### Response
If successful, this method returns `201, Created` response code and [servicePrincipal](../resources/serviceprincipal.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_serviceprincipal_from_serviceprincipals"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals
Content-type: application/json
Content-length: 453

{
  "servicePrincipal": {
    "accountEnabled": true,
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
    "appDisplayName": "appDisplayName-value",
    "appId": "appId-value",
    "appOwnerOrganizationId": "appOwnerOrganizationId-value",
    "appRoleAssignmentRequired": true
  }
}
```
In the request body, supply a JSON representation of [servicePrincipal](../resources/serviceprincipal.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceprincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 453

{
  "servicePrincipal": {
    "accountEnabled": true,
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
    "appDisplayName": "appDisplayName-value",
    "appId": "appId-value",
    "appOwnerOrganizationId": "appOwnerOrganizationId-value",
    "appRoleAssignmentRequired": true
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create servicePrincipal",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->