# Create deviceCompliancePolicyGroupAssignment
Create a new [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceCompliancePolicyGroupAssignment/<id>
POST /deviceManagement/deviceCompliancePolicies/<id>/groupAssignments/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a deviceCompliancePolicyGroupAssignment object.
The following table shows the properties that are required when you create a deviceCompliancePolicyGroupAssignment.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyAssignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device compliance policy to.|



### Response
If successful, this method returns a `201 Created` response code and a [deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_deviceCompliancePolicyGroupAssignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceCompliancePolicyGroupAssignment/<id>
Content-type: application/json
Content-length: 124

{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
  "targetGroupId": "Target Group Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 173

{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
  "id": "fe44007c-007c-fe44-7c00-44fe7c0044fe",
  "targetGroupId": "Target Group Id value"
}
```



