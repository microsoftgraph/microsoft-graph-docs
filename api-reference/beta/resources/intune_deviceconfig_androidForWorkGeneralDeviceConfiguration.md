# androidForWorkGeneralDeviceConfiguration resource type

Android For Work general device configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidForWorkGeneralDeviceConfigurations](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_list.md)|[androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) collection|List properties and relationships of the [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) objects.|
|[Get androidForWorkGeneralDeviceConfiguration](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_get.md)|[androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md)|Read properties and relationships of the [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object.|
|[Create androidForWorkGeneralDeviceConfiguration](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_create.md)|[androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md)|Create a new [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object.|
|[Delete androidForWorkGeneralDeviceConfiguration](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_delete.md)|None|Deletes a [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md).|
|[Update androidForWorkGeneralDeviceConfiguration](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_update.md)|[androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md)|Update the properties of a [androidForWorkGeneralDeviceConfiguration](../resources/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_androidForWorkGeneralDeviceConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|
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

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](intune_deviceconfig_deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidForWorkGeneralDeviceConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidForWorkGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "passwordBlockFingerprintUnlock": true,
  "passwordBlockTrustAgents": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "passwordRequiredType": "String",
  "workProfileDataSharingType": "String",
  "workProfileBlockNotificationsWhileDeviceLocked": true,
  "workProfileDefaultAppPermissionPolicy": "String"
}
```


