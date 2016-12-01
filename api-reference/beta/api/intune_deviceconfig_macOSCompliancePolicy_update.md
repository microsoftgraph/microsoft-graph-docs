# Update macOSCompliancePolicy
Update the properties of a [macOSCompliancePolicy](../resources/intune_deviceconfig_macOSCompliancePolicy.md) object.
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
In the request body, supply a JSON representation of a [macOSCompliancePolicy](../resources/intune_deviceconfig_macOSCompliancePolicy.md) object.
The following table shows the properties that are required when you create a [macOSCompliancePolicy](../resources/intune_deviceconfig_macOSCompliancePolicy.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceCompliancePolicy](intune_deviceconfig_deviceCompliancePolicy.md).|
|passwordRequired|Boolean|Whether or not to require a password.|
|passwordBlockSimple|Boolean|Indicates whether or not to block simple passwords.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity required before a password is required.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [macOSCompliancePolicy](../resources/intune_deviceconfig_macOSCompliancePolicy.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/<id>
Content-type: application/json
Content-length: 425

{
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
HTTP/1.1 200 OK
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



