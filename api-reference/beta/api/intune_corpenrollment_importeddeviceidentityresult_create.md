# Create importedDeviceIdentityResult
Create a new [importedDeviceIdentityResult](../resources/intune_corpenrollment_importeddeviceidentityresult.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /importedDeviceIdentityResults/{id}
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a importedDeviceIdentityResult object.
The following table shows the properties that are required when you create a importedDeviceIdentityResult.

|Property|Type|Description|
|---|---|---|
|id|String|Id of the imported device identity Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|importedDeviceIdentifier|String|Imported Device Identifier Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|importedDeviceIdentityType|String|Type of Imported Device Identity Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) Possible values are: `unknown`, `imei`, `serialNumber`.|
|lastModifiedDateTime|DateTimeOffset|Last Modified DateTime of the description Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|description|String|The description of the device Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md)|
|enrollmentState|String|The state of the device in Intune Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|String|The platform of the Device. Inherited from [importedDeviceIdentity](../resources/intune_corpenrollment_importeddeviceidentity.md) Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|status|Boolean|Status of imported device identity|



### Response
If successful, this method returns a `201 Created` response code and a [importedDeviceIdentityResult](../resources/intune_corpenrollment_importeddeviceidentityresult.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/importedDeviceIdentityResults/{id}
Content-type: application/json
Content-length: 421

{
  "@odata.type": "#microsoft.graph.importedDeviceIdentityResult",
  "importedDeviceIdentifier": "Imported Device Identifier value",
  "importedDeviceIdentityType": "imei",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios",
  "status": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 529

{
  "@odata.type": "#microsoft.graph.importedDeviceIdentityResult",
  "id": "9dfd3690-3690-9dfd-9036-fd9d9036fd9d",
  "importedDeviceIdentifier": "Imported Device Identifier value",
  "importedDeviceIdentityType": "imei",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios",
  "status": true
}
```



