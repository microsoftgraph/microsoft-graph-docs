# Create importedAppleDeviceIdentityResult
Create a new [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementServiceConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /importedAppleDeviceIdentityResults/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a importedAppleDeviceIdentityResult object.
The following table shows the properties that are required when you create a importedAppleDeviceIdentityResult.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|serialNumber|String|Device serial number Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|requestedEnrollmentProfileId|String|Enrollment profile Id admin intends to apply to the device during next enrollment Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|requestedEnrollmentProfileAssignmentDateTime|DateTimeOffset|The time enrollment profile was assigned to the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|isSupervised|Boolean|Indicates if the Apple device is supervised. More information is at: https://support.apple.com/en-us/HT202837 Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|discoverySource|String|Apple device discovery source. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `adminImport`, `deviceEnrollmentProgram`.|
|createdDateTime|DateTimeOffset|Created Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|lastContactedDateTime|DateTimeOffset|Last Contacted Date Time of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|description|String|The description of the device Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md)|
|enrollmentState|String|The state of the device in Intune Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`.|
|platform|String|The platform of the Device. Inherited from [importedAppleDeviceIdentity](../resources/intune_corpenrollment_importedAppleDeviceIdentity.md) Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|status|Boolean|Status of imported device identity|



### Response
If successful, this method returns a `201 Created` response code and a [importedAppleDeviceIdentityResult](../resources/intune_corpenrollment_importedAppleDeviceIdentityResult.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/importedAppleDeviceIdentityResults/<id>
Content-type: application/json
Content-length: 522

{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentityResult",
  "serialNumber": "Serial Number value",
  "requestedEnrollmentProfileId": "Requested Enrollment Profile Id value",
  "requestedEnrollmentProfileAssignmentDateTime": "2017-01-01T00:02:32.8167841-08:00",
  "isSupervised": true,
  "discoverySource": "adminImport",
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
Content-Length: 630

{
  "@odata.type": "#microsoft.graph.importedAppleDeviceIdentityResult",
  "id": "557cfb4a-fb4a-557c-4afb-7c554afb7c55",
  "serialNumber": "Serial Number value",
  "requestedEnrollmentProfileId": "Requested Enrollment Profile Id value",
  "requestedEnrollmentProfileAssignmentDateTime": "2017-01-01T00:02:32.8167841-08:00",
  "isSupervised": true,
  "discoverySource": "adminImport",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
  "description": "Description value",
  "enrollmentState": "enrolled",
  "platform": "ios",
  "status": true
}
```



