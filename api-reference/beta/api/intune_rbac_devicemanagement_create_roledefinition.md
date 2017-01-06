# Create roleDefinition
Create a new [roleDefinition](../resources/intune_rbac_roledefinition.md) by posting to the roleDefinitions collection.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/roleDefinitions/{id}
POST /deviceManagement/roleDefinitions/{id}/roleAssignments/{id}/roleDefinition/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a roleDefinition object.
The following table shows the properties that are required when you create a roleDefinition.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|Display Name of the Role definition.|
|description|String|Description of the Role definition.|
|permissions|[permission](../resources/intune_rbac_permission.md) collection|List of Resource Permissions this role is allowed to perform. These must match the actionName that is defined as part of the resourcePermission.|
|isBuiltInRoleDefinition|Boolean|Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.|



### Response
If successful, this method returns a `201 Created` response code and a [roleDefinition](../resources/intune_rbac_roledefinition.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/roleDefinitions/{id}
Content-type: application/json
Content-length: 317

{
  "@odata.type": "#microsoft.graph.roleDefinition",
  "displayName": "Display Name value",
  "description": "Description value",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.permission",
      "actions": [
        "Actions value"
      ]
    }
  ],
  "isBuiltInRoleDefinition": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 366

{
  "@odata.type": "#microsoft.graph.roleDefinition",
  "id": "70fdcd08-cd08-70fd-08cd-fd7008cdfd70",
  "displayName": "Display Name value",
  "description": "Description value",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.permission",
      "actions": [
        "Actions value"
      ]
    }
  ],
  "isBuiltInRoleDefinition": true
}
```



