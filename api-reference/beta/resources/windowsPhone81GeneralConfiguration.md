# windowsPhone81GeneralConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the windowsPhone81GeneralConfiguration resource.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsPhone81GeneralConfigurations](../api/windowsPhone81GeneralConfiguration_list.md)|[windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md) collection|List properties and relationships of the [windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md) objects.|
|[Get windowsPhone81GeneralConfiguration](../api/windowsPhone81GeneralConfiguration_get.md)|[windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md)|Read properties and relationships of the [windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md) object.|
|[Create windowsPhone81GeneralConfiguration](../api/windowsPhone81GeneralConfiguration_create.md)|[windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md)|Create a new [windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md) object.|
|[Delete windowsPhone81GeneralConfiguration](../api/windowsPhone81GeneralConfiguration_delete.md)|None|Deletes a [windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md).|
|[Update windowsPhone81GeneralConfiguration](../api/windowsPhone81GeneralConfiguration_update.md)|[windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md)|Update the properties of a [windowsPhone81GeneralConfiguration](../resources/windowsPhone81GeneralConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windowsPhone81GeneralConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windowsPhone81GeneralConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windowsPhone81GeneralConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|applyToWindows10Mobile|Boolean|Indicates whether or not to apply this configuration to Windows 10 mobile.|
|applyOnlyToWindowsPhone81|Boolean|Value indicating whether this policy only applies to Windows Phone 8.1.|
|appsBlockCopyPaste|Boolean|Indicates whether or not to block copy paste.|
|bluetoothBlocked|Boolean|Indicates whether or not to block bluetooth.|
|cameraBlocked|Boolean|Indicates whether or not to block camera.|
|cellularBlockWifiTethering|Boolean|Indicates whether or not to block Wi-Fi tethering. Has no impact if Wi-Fi is blocked.|
|compliantAppsList|[appListItem](../resources/appListItem.md) collection|List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType).|
|compliantAppListType|String|List that is in the AppComplianceList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|diagnosticDataBlockSubmission|Boolean|Indicates whether or not to block diagnostic data submission.|
|emailBlockAddingAccounts|Boolean|Indicates whether or not to block custom email accounts.|
|locationServicesBlocked|Boolean|Indicates whether or not to block location services.|
|microsoftAccountBlocked|Boolean|Indicates whether or not to block using a Microsoft Account.|
|nfcBlocked|Boolean|Indicates whether or not to block Near-Field Communication.|
|passwordBlockSimple|Boolean|Indicates whether or not to block syncing the calendar.|
|passwordExpirationDays|Int32|Number of days before the password expires.|
|passwordMinimumLength|Int32|Minimum length of passwords.|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before screen timeout.|
|passwordMinimumCharacterSetCount|Int32|Number of character sets a password must contain.|
|passwordPreviousPasswordBlockCount|Int32|Number of previous passwords to block.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Number of sign in failures allowed before factory reset.|
|passwordRequiredType|String|Password type that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordRequired|Boolean|Indicates whether or not to require a password.|
|screenCaptureBlocked|Boolean|Indicates whether or not to block screenshots.|
|storageBlockRemovableStorage|Boolean|Indicates whether or not to block removable storage.|
|storageRequireEncryption|Boolean|Indicates whether or not to require encryption.|
|webBrowserBlocked|Boolean|Indicates whether or not to block the web browser.|
|wifiBlocked|Boolean|Indicates whether or not to block Wi-Fi.|
|wifiBlockAutomaticConnectHotspots|Boolean|Indicates whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.|
|wifiBlockHotspotReporting|Boolean|Indicates whether or not to block Wi-Fi hotspot reporting. Has no impact if Wi-Fi is blocked.|
|windowsStoreBlocked|Boolean|Indicates whether or not to block the Windows Store.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](deviceConfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](deviceConfiguration.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsPhone81GeneralConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windowsPhone81GeneralConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "applyToWindows10Mobile": true,
  "applyOnlyToWindowsPhone81": true,
  "appsBlockCopyPaste": true,
  "bluetoothBlocked": true,
  "cameraBlocked": true,
  "cellularBlockWifiTethering": true,
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
  "emailBlockAddingAccounts": true,
  "locationServicesBlocked": true,
  "microsoftAccountBlocked": true,
  "nfcBlocked": true,
  "passwordBlockSimple": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordMinimumCharacterSetCount": 1024,
  "passwordPreviousPasswordBlockCount": 1024,
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "passwordRequiredType": "String",
  "passwordRequired": true,
  "screenCaptureBlocked": true,
  "storageBlockRemovableStorage": true,
  "storageRequireEncryption": true,
  "webBrowserBlocked": true,
  "wifiBlocked": true,
  "wifiBlockAutomaticConnectHotspots": true,
  "wifiBlockHotspotReporting": true,
  "windowsStoreBlocked": true
}
```

