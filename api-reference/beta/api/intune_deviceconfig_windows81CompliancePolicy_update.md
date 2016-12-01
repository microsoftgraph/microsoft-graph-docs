# Update windows81CompliancePolicy
Update the properties of a [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceCompliancePolicies/<id>
PATCH /deviceManagement/deviceCompliancePolicies/<id>/groupAssignments/<id>/deviceCompliancePolicy
PATCH /deviceCompliancePolicyAssignments/<id>/deviceCompliancePolicy
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object.
The following table shows the properties that are required when you create a [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|passwordExpirationDays|Int32|Password expiration in days.|
|passwordMinimumLength|Int32|The minimum password length.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent re-use of.|
|osMinimumVersion|String|Minimum Windows 8.1 version.|
|osMaximumVersion|String|Maximum Windows 8.1 version.|
|storageRequireEncryption|Boolean|Indicates whether or not to require encryption on a windows 8.1 device.|



### Response
If successful, this method returns a `200 OK` response code and an updated [windows81CompliancePolicy](../resources/intune_deviceconfig_windows81CompliancePolicy.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>
Content-type: application/json
Content-length: 546

{
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordMinimumCharacterSetCount": 32,
  "passwordRequiredType": "alphanumeric",
  "passwordPreviousPasswordBlockCount": 34,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "storageRequireEncryption": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 718

{
  "@odata.type": "#microsoft.graph.windows81CompliancePolicy",
  "id": "6bb4b7e0-b7e0-6bb4-e0b7-b46be0b7b46b",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordMinimumCharacterSetCount": 32,
  "passwordRequiredType": "alphanumeric",
  "passwordPreviousPasswordBlockCount": 34,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "storageRequireEncryption": true
}
```



