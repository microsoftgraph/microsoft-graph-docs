# Create windowsPhone81CompliancePolicy
Create a new [windowsPhone81CompliancePolicy](../resources/windowsPhone81CompliancePolicy.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceCompliancePolicies/<id>
POST /deviceManagement/deviceCompliancePolicies/<id>/groupAssignments/<id>/deviceCompliancePolicy
POST /deviceCompliancePolicyAssignments/<id>/deviceCompliancePolicy
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a windowsPhone81CompliancePolicy object.
The following table shows the properties that are required when you create a windowsPhone81CompliancePolicy.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](deviceCompliancePolicy.md).|
|passwordBlockSimple|Boolean|Whether or not to block syncing the calendar.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a password is required.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequired|Boolean|Whether or not to require a password.|
|osMinimumVersion|String|Minimum Windows Phone version.|
|osMaximumVersion|String|Maximum Windows Phone version.|
|storageRequireEncryption|Boolean|Require encryption on windows phone devices.|



### Response
If successful, this method returns a `201 Created` response code and a [windowsPhone81CompliancePolicy](../resources/windowsPhone81CompliancePolicy.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>
Content-type: application/json
Content-length: 676

{
  "@odata.type": "#microsoft.graph.windowsPhone81CompliancePolicy",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordMinimumCharacterSetCount": 32,
  "passwordRequiredType": "alphanumeric",
  "passwordPreviousPasswordBlockCount": 34,
  "passwordRequired": true,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "storageRequireEncryption": true
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 784

{
  "@odata.type": "#microsoft.graph.windowsPhone81CompliancePolicy",
  "id": "e6021ad4-1ad4-e602-d41a-02e6d41a02e6",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordMinimumCharacterSetCount": 32,
  "passwordRequiredType": "alphanumeric",
  "passwordPreviousPasswordBlockCount": 34,
  "passwordRequired": true,
  "osMinimumVersion": "Os Minimum Version value",
  "osMaximumVersion": "Os Maximum Version value",
  "storageRequireEncryption": true
}
```


