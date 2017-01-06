# Create macOSCompliancePolicy
Create a new [macOSCompliancePolicy](../resources/intune_deviceconfig_macoscompliancepolicy.md) object.
### Prerequisites
One of the following **permissions** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceCompliancePolicies/{id}
POST /deviceCompliancePolicyAssignments/{id}/deviceCompliancePolicy/
POST /deviceManagement/deviceCompliancePolicies/{id}/groupAssignments/{id}/deviceCompliancePolicy/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a macOSCompliancePolicy object.
The following table shows the properties that are required when you create a macOSCompliancePolicy.

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](../resources/intune_deviceconfig_devicecompliancepolicy.md)|
|passwordRequired|Boolean|Whether or not to require a password.|
|passwordBlockSimple|Boolean|Indicates whether or not to block simple passwords.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity required before a password is required.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|



### Response
If successful, this method returns a `201 Created` response code and a [macOSCompliancePolicy](../resources/intune_deviceconfig_macoscompliancepolicy.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/{id}
Content-type: application/json
Content-length: 485

{
  "@odata.type": "#microsoft.graph.macOSCompliancePolicy",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordRequired": true,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordPreviousPasswordBlockCount": 34,
  "passwordRequiredType": "alphanumeric"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 593

{
  "@odata.type": "#microsoft.graph.macOSCompliancePolicy",
  "id": "ddbadff3-dff3-ddba-f3df-baddf3dfbadd",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "version": 7,
  "passwordRequired": true,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeLock": 37,
  "passwordPreviousPasswordBlockCount": 34,
  "passwordRequiredType": "alphanumeric"
}
```



