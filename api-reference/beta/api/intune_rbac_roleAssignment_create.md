# Create roleAssignment
Create a new [roleAssignment](../resources/intune_rbac_roleAssignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/roleDefinitions/<id>/roleAssignments/<id>
POST /deviceManagement/roleAssignments/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a roleAssignment object.
The following table shows the properties that are required when you create a roleAssignment.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the role Assignment.|
|description|String|Description of the Role Assignment.|
|members|String collection|The list of ids of role member security groups. These are IDs from Azure Active Directory.|
|scopeMembers|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory.|



### Response
If successful, this method returns a `201 Created` response code and a [roleAssignment](../resources/intune_rbac_roleAssignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/roleDefinitions/<id>/roleAssignments/<id>
Content-type: application/json
Content-length: 232

{
  "@odata.type": "#microsoft.graph.roleAssignment",
  "displayName": "Display Name value",
  "description": "Description value",
  "members": [
    "Members value"
  ],
  "scopeMembers": [
    "Scope Members value"
  ]
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 281

{
  "@odata.type": "#microsoft.graph.roleAssignment",
  "id": "b3234d24-4d24-b323-244d-23b3244d23b3",
  "displayName": "Display Name value",
  "description": "Description value",
  "members": [
    "Members value"
  ],
  "scopeMembers": [
    "Scope Members value"
  ]
}
```



