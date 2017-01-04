# Update roleAssignment
Update the properties of a [roleAssignment](../resources/intune_rbac_roleassignment.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/roleAssignments/{id}
PATCH /deviceManagement/roleDefinitions/{id}/roleAssignments/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [roleAssignment](../resources/intune_rbac_roleassignment.md) object.
The following table shows the properties that are required when you create a [roleAssignment](../resources/intune_rbac_roleassignment.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This is read-only and automatically generated.|
|displayName|String|The display or friendly name of the role Assignment.|
|description|String|Description of the Role Assignment.|
|members|String collection|The list of ids of role member security groups. These are IDs from Azure Active Directory.|
|scopeMembers|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory.|



### Response
If successful, this method returns a `200 OK` response code and an updated [roleAssignment](../resources/intune_rbac_roleassignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/roleAssignments/{id}
Content-type: application/json
Content-length: 179

{
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
HTTP/1.1 200 OK
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



