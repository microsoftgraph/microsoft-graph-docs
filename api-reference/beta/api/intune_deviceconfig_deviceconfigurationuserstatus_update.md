# Update deviceConfigurationUserStatus

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//rootCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/rootCertificate//userStatuses/{deviceConfigurationUserStatusId}
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//userStatuses/{deviceConfigurationUserStatusId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) object.
The following table shows the properties that are required when you create a [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|userDisplayName|String|User name of the DevicePolicyStatus.|
|devicesCount|Int32|Devices count for that user.|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|
|userPrincipalName|String|UserPrincipalName.|

## Response

If successful, this method returns a `200 OK` response code and an updated [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatuses/{deviceConfigurationUserStatusId}
Content-type: application/json
Content-length: 222

{
  "userDisplayName": "User Display Name value",
  "devicesCount": 12,
  "status": "notApplicable",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00",
  "userPrincipalName": "User Principal Name value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 339

{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStatus",
  "id": "7e323db2-3db2-7e32-b23d-327eb23d327e",
  "userDisplayName": "User Display Name value",
  "devicesCount": 12,
  "status": "notApplicable",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00",
  "userPrincipalName": "User Principal Name value"
}
```



