# Delete roleDefinition
Deletes a [roleDefinition](../resources/intune_rbac_roledefinition.md).
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /deviceManagement/roleDefinitions/{id}
DELETE /deviceManagement/roleDefinitions/{id}/roleAssignments/{id}/roleDefinition/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
DELETE https://graph.microsoft.com/beta/deviceManagement/roleDefinitions/{id}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



