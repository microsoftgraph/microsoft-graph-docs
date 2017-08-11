# Get deviceConfigurationDeviceOverview

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//rootCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/rootCertificate//deviceStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//deviceStatusOverview/
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceStatusOverview/
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 369

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceConfigurationDeviceOverview",
    "id": "62d48e3a-8e3a-62d4-3a8e-d4623a8ed462",
    "numberOfPendingDevices": 6,
    "numberOfSucceededDevices": 8,
    "numberOfErrorDevices": 4,
    "numberOfFailedDevices": 5,
    "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
    "policyRevision": 14
  }
}
```



