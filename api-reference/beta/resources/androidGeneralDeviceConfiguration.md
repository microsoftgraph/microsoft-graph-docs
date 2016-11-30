# androidGeneralDeviceConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the androidGeneralDeviceConfiguration resource.

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidGeneralDeviceConfigurations](../api/androidGeneralDeviceConfiguration_list.md)|[androidGeneralDeviceConfiguration](androidGeneralDeviceConfiguration.md) collection|List properties and relationships of the [androidGeneralDeviceConfiguration](../resource/androidGeneralDeviceConfiguration.md) objects.|
|[Get androidGeneralDeviceConfiguration](../api/androidGeneralDeviceConfiguration_get.md)|[androidGeneralDeviceConfiguration](androidGeneralDeviceConfiguration.md)|Read properties and relationships of the [androidGeneralDeviceConfiguration](../resource/androidGeneralDeviceConfiguration.md) object.|
|[Create androidGeneralDeviceConfiguration](../api/androidGeneralDeviceConfiguration_create.md)|[androidGeneralDeviceConfiguration](androidGeneralDeviceConfiguration.md)|Create a new [androidGeneralDeviceConfiguration](../resource/androidGeneralDeviceConfiguration.md) object.|
|[Delete androidGeneralDeviceConfiguration](../api/androidGeneralDeviceConfiguration_delete.md)|None|Deletes a [androidGeneralDeviceConfiguration](../resource/androidGeneralDeviceConfiguration.md).|
|[Update androidGeneralDeviceConfiguration](../api/androidGeneralDeviceConfiguration_update.md)|[androidGeneralDeviceConfiguration](androidGeneralDeviceConfiguration.md)|Update the properties of a [androidGeneralDeviceConfiguration](../resource/androidGeneralDeviceConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidGeneralDeviceConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidGeneralDeviceConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidGeneralDeviceConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|appsBlockClipboardSharing|Boolean|Indicates whether or not to block clipboard sharing to copy and paste between applications.|
|appsBlockCopyPaste|Boolean|Indicates whether or not to block copy and paste within applications.|
|appsBlockYouTube|Boolean|Indicates whether or not to block the YouTube app.|
|bluetoothBlocked|Boolean|Indicates whether or not to block Bluetooth.|
|cameraBlocked|Boolean|Indicates whether or not to block the use of the camera.|
|cellularBlockDataRoaming|Boolean|Indicates whether or not to block data roaming.|
|cellularBlockMessaging|Boolean|Indicates whether or not to block SMS/MMS messaging.|
|cellularBlockVoiceRoaming|Boolean|Indicates whether or not to block voice roaming.|
|cellularBlockWiFiTethering|Boolean|Indicates whether or not to block syncing Wi-Fi tethering.|
|compliantAppsList|[appListItem](appListItem.md) collection|List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType).|
|compliantAppListType|String|Type of list that is in the CompliantAppsList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|diagnosticDataBlockSubmission|Boolean|Indicates whether or not to block diagnostic data submission.|
|locationServicesBlocked|Boolean|Indicates whether or not to block location services.|
|googleAccountBlockAutoSync|Boolean|Indicates whether or not to block Google account auto sync.|
|googlePlayStoreBlocked|Boolean|Indicates whether or not to block the Google Play store.|
|kioskModeBlockSleepButton|Boolean|Indicates whether or not to block the screen sleep button while in Kiosk Mode.|
|kioskModeBlockVolumeButtons|Boolean|Indicates whether or not to block the volume buttons while in Kiosk Mode.|
|kioskModeManagedAppId|String|Managed app that will be allowed to run when the device is in Kiosk Mode. Only KioskModeAppStoreUrl or this can be set (not both).|
|nfcBlocked|Boolean|Indicates whether or not to block Near-Field Communication.|
|passwordBlockFingerprintUnlock|Boolean|Indicates whether or not to block fingerprint unlock.|
|passwordBlockTrustAgents|Boolean|Indicates whether or not to block Smart Lock and other trust agents.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before the screen times out.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Number of sign in failures allowed before factory reset.|
|passwordRequiredType|String|Type of password that is required. Possible values are: `deviceDefault`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `numeric`.|
|passwordRequired|Boolean|Indicates whether or not to require a password.|
|powerOffBlocked|Boolean|Indicates whether or not to block powering off the device.|
|factoryResetBlocked|Boolean|Indicates whether or not to block user performing a factory reset.|
|screenCaptureBlocked|Boolean|Indicates whether or not to block screenshots.|
|deviceSharingBlocked|Boolean|Indicates whether or not to block device sharing mode.|
|storageBlockGoogleBackup|Boolean|Indicates whether or not to block Google Backup.|
|storageBlockRemovableStorage|Boolean|Indicates whether or not to block removable storage usage.|
|storageRequireDeviceEncryption|Boolean|Indicates whether or not to require device encryption.|
|storageRequireRemovableStorageEncryption|Boolean|Indicates whether or not to require removable storage encryption.|
|voiceAssistantBlocked|Boolean|Indicates whether or not to block the use of the Voice Assistant.|
|voiceDialingBlocked|Boolean|Indicates whether or not to block voice dialing.|
|webBrowserAllowPopups|Boolean|Indicates whether or not to allow popups within the web browser.|
|webBrowserBlockAutofill|Boolean|Indicates whether or not to block the web browser's auto fill feature.|
|webBrowserBlockJavaScript|Boolean|Indicates whether or not to block JavaScript within the web browser.|
|webBrowserBlocked|Boolean|Indicates whether or not to block the web browser.|
|webBrowserCookieSettings|String|Cookie settings within the web browser. Possible values are: `browserDefault`, `blockAlways`, `allowCurrentWebSite`, `allowFromWebsitesVisited`, `allowAlways`.|
|wiFiBlocked|Boolean|Indicates whether or not to block syncing Wi-Fi.|

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
  "@odata.type": "microsoft.graph.androidGeneralDeviceConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "appsBlockClipboardSharing": true,
  "appsBlockCopyPaste": true,
  "appsBlockYouTube": true,
  "bluetoothBlocked": true,
  "cameraBlocked": true,
  "cellularBlockDataRoaming": true,
  "cellularBlockMessaging": true,
  "cellularBlockVoiceRoaming": true,
  "cellularBlockWiFiTethering": true,
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "compliantAppListType": "String",
  "diagnosticDataBlockSubmission": true,
  "locationServicesBlocked": true,
  "googleAccountBlockAutoSync": true,
  "googlePlayStoreBlocked": true,
  "kioskModeBlockSleepButton": true,
  "kioskModeBlockVolumeButtons": true,
  "kioskModeManagedAppId": "String",
  "nfcBlocked": true,
  "passwordBlockFingerprintUnlock": true,
  "passwordBlockTrustAgents": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "passwordRequiredType": "String",
  "passwordRequired": true,
  "powerOffBlocked": true,
  "factoryResetBlocked": true,
  "screenCaptureBlocked": true,
  "deviceSharingBlocked": true,
  "storageBlockGoogleBackup": true,
  "storageBlockRemovableStorage": true,
  "storageRequireDeviceEncryption": true,
  "storageRequireRemovableStorageEncryption": true,
  "voiceAssistantBlocked": true,
  "voiceDialingBlocked": true,
  "webBrowserAllowPopups": true,
  "webBrowserBlockAutofill": true,
  "webBrowserBlockJavaScript": true,
  "webBrowserBlocked": true,
  "webBrowserCookieSettings": "String",
  "wiFiBlocked": true
}
```

