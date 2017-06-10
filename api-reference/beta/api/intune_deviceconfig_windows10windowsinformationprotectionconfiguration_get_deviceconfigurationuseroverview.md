# Get deviceConfigurationUserOverview

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) from the userStatusOverview navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All; DeviceManagementConfiguration.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//rootCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/rootCertificate//userStatusOverview/
GET /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//userStatusOverview/
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
If successful, this method returns a `200 OK` response code and [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatusOverview/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 359

{
  "value": {
    "@odata.type": "#microsoft.graph.deviceConfigurationUserOverview",
    "id": "000e52d7-52d7-000e-d752-0e00d7520e00",
    "numberOfPendingUsers": 4,
    "numberOfSucceededUsers": 6,
    "numberOfErrorUsers": 2,
    "numberOfFailedUsers": 3,
    "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
    "policyRevision": 14
  }
}
```



