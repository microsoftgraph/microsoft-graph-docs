# Update deviceConfigurationDeviceOverview

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//deviceStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//deviceStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//deviceStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows10VpnConfiguration/identityCertificate//deviceStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//deviceStatusOverview/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object.
The following table shows the properties that are required when you create a [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|numberOfPendingDevices|Int32|Number of pending devices|
|numberOfSucceededDevices|Int32|Number of succeeded devices|
|numberOfErrorDevices|Int32|Number of error devices|
|numberOfFailedDevices|Int32|Number of failed devices|
|lastUpdateTime|DateTimeOffset|Last update time|
|policyRevision|Int32|Version of the policy for that overview|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceStatusOverview/
Content-type: application/json
Content-length: 213

{
  "numberOfPendingDevices": 6,
  "numberOfSucceededDevices": 8,
  "numberOfErrorDevices": 4,
  "numberOfFailedDevices": 5,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 334

{
  "@odata.type": "#microsoft.graph.deviceConfigurationDeviceOverview",
  "id": "62d48e3a-8e3a-62d4-3a8e-d4623a8ed462",
  "numberOfPendingDevices": 6,
  "numberOfSucceededDevices": 8,
  "numberOfErrorDevices": 4,
  "numberOfFailedDevices": 5,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```



