# Create deviceConfigurationGroupAssignment

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceConfigurationGroupAssignment/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//rootCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/rootCertificate//groupAssignments/
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a deviceConfigurationGroupAssignment object.
The following table shows the properties that are required when you create a deviceConfigurationGroupAssignment.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|
|excludeGroup|Boolean|Indicates if this group is should be excluded. Defaults that the group should be included|



## Response
If successful, this method returns a `201 Created` response code and a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceConfigurationGroupAssignment/
Content-type: application/json
Content-length: 146

{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "excludeGroup": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 195

{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "561d26c5-26c5-561d-c526-1d56c5261d56",
  "targetGroupId": "Target Group Id value",
  "excludeGroup": true
}
```



