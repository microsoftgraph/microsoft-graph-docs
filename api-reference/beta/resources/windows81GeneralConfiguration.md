# windows81GeneralConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the windows81GeneralConfiguration resource.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows81GeneralConfigurations](../api/windows81GeneralConfiguration_list.md)|[windows81GeneralConfiguration](windows81GeneralConfiguration.md) collection|List properties and relationships of the [windows81GeneralConfiguration](../resource/windows81GeneralConfiguration.md) objects.|
|[Get windows81GeneralConfiguration](../api/windows81GeneralConfiguration_get.md)|[windows81GeneralConfiguration](windows81GeneralConfiguration.md)|Read properties and relationships of the [windows81GeneralConfiguration](../resource/windows81GeneralConfiguration.md) object.|
|[Create windows81GeneralConfiguration](../api/windows81GeneralConfiguration_create.md)|[windows81GeneralConfiguration](windows81GeneralConfiguration.md)|Create a new [windows81GeneralConfiguration](../resource/windows81GeneralConfiguration.md) object.|
|[Delete windows81GeneralConfiguration](../api/windows81GeneralConfiguration_delete.md)|None|Deletes a [windows81GeneralConfiguration](../resource/windows81GeneralConfiguration.md).|
|[Update windows81GeneralConfiguration](../api/windows81GeneralConfiguration_update.md)|[windows81GeneralConfiguration](windows81GeneralConfiguration.md)|Update the properties of a [windows81GeneralConfiguration](../resource/windows81GeneralConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows81GeneralConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows81GeneralConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows81GeneralConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|accountsBlockAddingNonMicrosoftAccountEmail|Boolean|Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.|
|applyOnlyToWindows81|Boolean|Value indicating whether this policy only applies to Windows 8.1.|
|browserBlockAutofill|Boolean|Indicates whether or not to block auto fill.|
|browserBlockAutomaticDetectionOfIntranetSites|Boolean|Indicates whether or not to block automatic detection of Intranet sites.|
|browserBlockEnterpriseModeAccess|Boolean|Indicates whether or not to block enterprise mode access.|
|browserBlockJavaScript|Boolean|Indicates whether or not to Block the user from using JavaScript.|
|browserBlockPlugins|Boolean|Indicates whether or not to block plug-ins.|
|browserBlockPopups|Boolean|Indicates whether or not to block popups.|
|browserBlockSendingDoNotTrackHeader|Boolean|Indicates whether or not to Block the user from sending the do not track header.|
|browserBlockSingleWordEntryOnIntranetSites|Boolean|Indicates whether or not to block a single word entry on Intranet sites.|
|browserRequireSmartScreen|Boolean|Indicates whether or not to require the user to use the smart screen filter.|
|browserEnterpriseModeSiteListLocation|String|The enterprise mode site list location. Could be a local file, local network or http location.|
|browserInternetSecurityLevel|String|The internet security level. Possible values are: `userDefined`, `medium`, `mediumHigh`, `high`.|
|browserIntranetSecurityLevel|String|The Intranet security level. Possible values are: `userDefined`, `low`, `mediumLow`, `medium`, `mediumHigh`, `high`.|
|browserLoggingReportLocation|String|The logging report location.|
|browserRequireHighSecurityForRestrictedSites|Boolean|Indicates whether or not to require high security for restricted sites.|
|browserRequireFirewall|Boolean|Indicates whether or not to require a firewall.|
|browserRequireFraudWarning|Boolean|Indicates whether or not to require fraud warning.|
|browserTrustedSitesSecurityLevel|String|The trusted sites security level. Possible values are: `userDefined`, `low`, `mediumLow`, `medium`, `mediumHigh`, `high`.|
|cellularBlockDataRoaming|Boolean|Indicates whether or not to block data roaming.|
|diagnosticsBlockDataSubmission|Boolean|Indicates whether or not to block diagnostic data submission.|
|passwordBlockPicturePasswordAndPin|Boolean|Indicates whether or not to Block the user from using a pictures password and pin.|
|passwordExpirationDays|Int32|Password expiration in days.|
|passwordMinimumLength|Int32|The minimum password length.|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|The minutes of inactivity before the screen times out.|
|passwordMinimumCharacterSetCount|Int32|The number of character sets required in the password.|
|passwordPreviousPasswordBlockCount|Int32|The number of previous passwords to prevent re-use of.|
|passwordRequiredType|String|The required password type. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|The number of sign in failures before factory reset.|
|storageRequireDeviceEncryption|Boolean|Indicates whether or not to require encryption on a mobile device.|
|minimumAutoInstallClassification|String|The minimum update classification to install automatically. Possible values are: `userDefined`, `recommendedAndImportant`, `important`, `none`.|
|updatesRequireAutomaticUpdates|Boolean|Indicates whether or not to require automatic updates.|
|userAccountControlSettings|String|The user account control settings. Possible values are: `userDefined`, `alwaysNotify`, `notifyOnAppChanges`, `notifyOnAppChangesWithoutDimming`, `neverNotify`.|
|workFoldersUrl|String|The work folders url.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows81GeneralConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows81GeneralConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "accountsBlockAddingNonMicrosoftAccountEmail": true,
  "applyOnlyToWindows81": true,
  "browserBlockAutofill": true,
  "browserBlockAutomaticDetectionOfIntranetSites": true,
  "browserBlockEnterpriseModeAccess": true,
  "browserBlockJavaScript": true,
  "browserBlockPlugins": true,
  "browserBlockPopups": true,
  "browserBlockSendingDoNotTrackHeader": true,
  "browserBlockSingleWordEntryOnIntranetSites": true,
  "browserRequireSmartScreen": true,
  "browserEnterpriseModeSiteListLocation": "String",
  "browserInternetSecurityLevel": "String",
  "browserIntranetSecurityLevel": "String",
  "browserLoggingReportLocation": "String",
  "browserRequireHighSecurityForRestrictedSites": true,
  "browserRequireFirewall": true,
  "browserRequireFraudWarning": true,
  "browserTrustedSitesSecurityLevel": "String",
  "cellularBlockDataRoaming": true,
  "diagnosticsBlockDataSubmission": true,
  "passwordBlockPicturePasswordAndPin": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordRequiredType": "String",
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "storageRequireDeviceEncryption": true,
  "minimumAutoInstallClassification": "String",
  "updatesRequireAutomaticUpdates": true,
  "userAccountControlSettings": "String",
  "workFoldersUrl": "String"
}
```

