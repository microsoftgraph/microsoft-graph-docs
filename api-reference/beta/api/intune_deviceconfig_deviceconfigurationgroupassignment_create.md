# Create deviceConfigurationGroupAssignment
Create a new [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceConfigurationGroupAssignment/{id}
POST /deviceManagement/deviceConfigurations/{id}/groupAssignments/{id}
POST /deviceManagement/deviceConfigurations/{id}/rootCertificate//groupAssignments/{id}
POST /deviceManagement/deviceConfigurations/{id}/microsoft.graph.iosScepCertificateProfile/rootCertificate//groupAssignments/{id}
POST /deviceManagement/deviceConfigurations/{id}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//groupAssignments/{id}
POST /deviceManagement/deviceConfigurations/{id}/microsoft.graph.windows10VpnConfiguration/identityCertificate//groupAssignments/{id}
POST /deviceManagement/deviceConfigurations/{id}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//groupAssignments/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a deviceConfigurationGroupAssignment object.
The following table shows the properties that are required when you create a deviceConfigurationGroupAssignment.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|



### Response
If successful, this method returns a `201 Created` response code and a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceConfigurationGroupAssignment/{id}
Content-type: application/json
Content-length: 121

{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "targetGroupId": "Target Group Id value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 170

{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "561d26c5-26c5-561d-c526-1d56c5261d56",
  "targetGroupId": "Target Group Id value"
}
```



