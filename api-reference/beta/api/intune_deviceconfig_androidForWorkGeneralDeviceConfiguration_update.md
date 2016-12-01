# Update androidForWorkGeneralDeviceConfiguration
Update the properties of a [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/<id>
PATCH /deviceManagement/deviceConfigurations/<id>/groupAssignments/<id>/deviceConfiguration
PATCH /deviceConfigurationAssignments/<id>/deviceConfiguration
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object.
The following table shows the properties that are required when you create a [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md).|
|passwordBlockFingerprintUnlock|Boolean|Indicates whether or not to block fingerprint unlock.|
|passwordBlockTrustAgents|Boolean|Indicates whether or not to block Smart Lock and other trust agents.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before the screen times out.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Number of sign in failures allowed before factory reset.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `lowSecurityBiometric`, `required`, `atLeastNumeric`, `numericComplex`, `atLeastAlphabetic`, `atLeastAlphanumeric`, `alphanumericWithSymbols`.|
|workProfileDataSharingType|String|Type of data sharing that is allowed. Possible values are: `deviceDefault`, `preventAny`, `allowPersonalToWork`, `noRestrictions`.|
|workProfileBlockNotificationsWhileDeviceLocked|Boolean|Indicates whether or not to block notifications while device locked.|
|workProfileDefaultAppPermissionPolicy|String|Type of password that is required. Possible values are: `deviceDefault`, `prompt`, `autoGrant`, `autoDeny`.|



### Response
If successful, this method returns a `200 OK` response code and an updated [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/<id>
Content-type: application/json
Content-length: 676

{
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "passwordBlockFingerprintUnlock": true,
  "passwordBlockTrustAgents": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 46,
  "passwordPreviousPasswordBlockCount": 34,
  "passwordSignInFailureCountBeforeFactoryReset": 44,
  "passwordRequiredType": "lowSecurityBiometric",
  "workProfileDataSharingType": "preventAny",
  "workProfileBlockNotificationsWhileDeviceLocked": true,
  "workProfileDefaultAppPermissionPolicy": "prompt"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 863

{
  "@odata.type": "#microsoft.graph.androidForWorkGeneralDeviceConfiguration",
  "id": "a931a366-a366-a931-66a3-31a966a331a9",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "passwordBlockFingerprintUnlock": true,
  "passwordBlockTrustAgents": true,
  "passwordExpirationDays": 22,
  "passwordMinimumLength": 21,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 46,
  "passwordPreviousPasswordBlockCount": 34,
  "passwordSignInFailureCountBeforeFactoryReset": 44,
  "passwordRequiredType": "lowSecurityBiometric",
  "workProfileDataSharingType": "preventAny",
  "workProfileBlockNotificationsWhileDeviceLocked": true,
  "workProfileDefaultAppPermissionPolicy": "prompt"
}
```



