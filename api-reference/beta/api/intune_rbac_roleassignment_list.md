# List roleAssignments
List properties and relationships of the [roleAssignment](../resources/intune_rbac_roleassignment.md) objects.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All; DeviceManagementRBAC.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/roleAssignments/
GET /deviceManagement/roleDefinitions/{id}/roleAssignments/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [roleAssignment](../resources/intune_rbac_roleassignment.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/roleAssignments/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 354

{
  "value": [
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
  ]
}
```



