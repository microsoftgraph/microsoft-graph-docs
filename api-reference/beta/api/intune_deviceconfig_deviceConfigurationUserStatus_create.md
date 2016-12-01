# Create deviceConfigurationUserStatus
Create a new [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceConfigurations/<id>/userStatuses/<id>
POST /deviceManagement/deviceConfigurations/<id>/rootCertificate//userStatuses/<id>
POST /deviceManagement/deviceConfigurations/<id>/microsoft.graph.iosScepCertificateProfile/rootCertificate//userStatuses/<id>
POST /deviceManagement/deviceConfigurations/<id>/microsoft.graph.macOSScepCertificateProfile/rootCertificate//userStatuses/<id>
POST /deviceManagement/deviceConfigurations/<id>/microsoft.graph.windows10VpnConfiguration/identityCertificate//userStatuses/<id>
POST /deviceManagement/deviceConfigurations/<id>/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//userStatuses/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a deviceConfigurationUserStatus object.
The following table shows the properties that are required when you create a deviceConfigurationUserStatus.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|status|String|Compliance status of the policy report. Possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report.|



### Response
If successful, this method returns a `201 Created` response code and a [deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>/userStatuses/<id>
Content-type: application/json
Content-length: 165

{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStatus",
  "status": "notApplicable",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 214

{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserStatus",
  "id": "7e323db2-3db2-7e32-b23d-327eb23d327e",
  "status": "notApplicable",
  "lastReportedDateTime": "2017-01-01T00:00:17.7769392-08:00"
}
```



