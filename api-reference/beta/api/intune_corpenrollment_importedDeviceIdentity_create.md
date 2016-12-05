# Create importedDeviceIdentity
Create a new [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/importedDeviceIdentities/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a importedDeviceIdentity object.
The following table shows the properties that are required when you create a importedDeviceIdentity.

|Property|Type|Description|
|---|---|---|
|id|String|Id of the imported device identity|
|importedDeviceIdentifier|String|Imported Device Identifier|
|importedDeviceIdentityType|String|Type of Imported Device Identity Possible values are: `unknown`, `imei`, `serialNumber`.|
|lastModifiedDateTime|DateTimeOffset|Last Modified DateTime of the description|
|createdDateTime|DateTimeOffset|Created Date Time of the device|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device|
|description|String|The description of the device|
|enrollmentState|String|The state of the device in Intune Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|String|The platform of the Device. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|



### Response
If successful, this method returns a `201 Created` response code and a [importedDeviceIdentity](../resources/intune_corpenrollment_importedDeviceIdentity.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/importedDeviceIdentities/<id>
Content-type: application/json
Content-length: 396

{
  "@odata.type": "#microsoft.graph.importedDeviceIdentity",
  "importedDeviceIdentifier": "Imported Device Identifier value",
  "importedDeviceIdentityType": "imei",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 504

{
  "@odata.type": "#microsoft.graph.importedDeviceIdentity",
  "id": "9f70a12f-a12f-9f70-2fa1-709f2fa1709f",
  "importedDeviceIdentifier": "Imported Device Identifier value",
  "importedDeviceIdentityType": "imei",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios"
}
```



