# androidDeviceOwnerGeneralDeviceConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This topic provides descriptions of the declared methods, properties and relationships exposed by the androidDeviceOwnerGeneralDeviceConfiguration resource.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceOwnerGeneralDeviceConfigurations](../api/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration_list.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) collection|List properties and relationships of the [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) objects.|
|[Get androidDeviceOwnerGeneralDeviceConfiguration](../api/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration_get.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md)|Read properties and relationships of the [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) object.|
|[Create androidDeviceOwnerGeneralDeviceConfiguration](../api/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration_create.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md)|Create a new [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) object.|
|[Delete androidDeviceOwnerGeneralDeviceConfiguration](../api/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration_delete.md)|None|Deletes a [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md).|
|[Update androidDeviceOwnerGeneralDeviceConfiguration](../api/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration_update.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md)|Update the properties of a [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune_deviceconfig_androiddeviceownergeneraldeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|accountsBlockModification|Boolean|Indicates whether or not adding or removing accounts is disabled.|
|appsAllowInstallFromUnknownSources|Boolean|Indicates whether or not the user is allowed to enable to unknown sources setting.|
|appsAutoUpdatePolicy|[androidDeviceOwnerAppAutoUpdatePolicyType](../resources/intune_deviceconfig_androiddeviceownerappautoupdatepolicytype.md)|Indicates the value of the app auto update policy. Possible values are: `notConfigured`, `userChoice`, `never`, `wiFiOnly`, `always`.|
|appsDefaultPermissionPolicy|[androidDeviceOwnerDefaultAppPermissionPolicyType](../resources/intune_deviceconfig_androiddeviceownerdefaultapppermissionpolicytype.md)|Indicates the permission policy for requests for runtime permissions if one is not defined for the app specifically. Possible values are: `deviceDefault`, `prompt`, `autoGrant`, `autoDeny`.|
|bluetoothBlockConfiguration|Boolean|Indicates whether or not to block a user from configuring bluetooth.|
|bluetoothBlockContactSharing|Boolean|Indicates whether or not to block a user from sharing contacts via bluetooth.|
|cameraBlocked|Boolean|Indicates whether or not to disable the use of the camera.|
|cellularBlockWiFiTethering|Boolean|Indicates whether or not to block Wi-Fi tethering.|
|dataRoamingBlocked|Boolean|Indicates whether or not to block a user from data roaming.|
|dateTimeConfigurationBlocked|Boolean|Indicates whether or not to block the user from manually changing the date or time on the device|
|factoryResetDeviceAdministratorEmails|String collection|List of Google account emails that will be required to authenticate after a device is factory reset before it can be set up.|
|factoryResetBlocked|Boolean|Indicates whether or not the factory reset option in settings is disabled.|
|kioskModeApps|[appListItem](../resources/intune_deviceconfig_applistitem.md) collection|A list of managed apps that will be shown when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.|
|microphoneForceMute|Boolean|Indicates whether or not to block unmuting the microphone on the device.|
|networkEscapeHatchAllowed|Boolean|Indicates whether or not the device will allow connecting to a temporary network connection at boot time.|
|nfcBlockOutgoingBeam|Boolean|Indicates whether or not to block NFC outgoing beam.|
|passwordBlockKeyguard|Boolean|Indicates whether or not the keyguard is disabled.|
|passwordExpirationDays|Int32|Indicates the amount of time in seconds that a password can be set for before it expires and a new password will be required. Valid values 1 to 365|
|passwordMinimumLength|Int32|Indicates the minimum length of the password required on the device. Valid values 4 to 16|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Milliseconds of inactivity before the screen times out.|
|passwordPreviousPasswordCountToBlock|Int32|Indicates the length of password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24|
|passwordRequiredType|[androidDeviceOwnerRequiredPasswordType](../resources/intune_deviceconfig_androiddeviceownerrequiredpasswordtype.md)|Indicates the minimum password quality required on the device. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11|
|safeBootBlocked|Boolean|Indicates whether or not rebooting the device into safe boot is disabled.|
|screenCaptureBlocked|Boolean|Indicates whether or not to disable the capability to take screenshots.|
|securityAllowDebuggingFeatures|Boolean|Indicates whether or not to block the user from enabling debugging features on the device.|
|securityRequireVerifyApps|Boolean|Indicates whether or not verify apps is required.|
|statusBarBlocked|Boolean|Indicates whether or the status bar is disabled, including notifications, quick settings and other screen overlays.|
|stayOnModes|[androidDeviceOwnerBatteryPluggedMode](../resources/intune_deviceconfig_androiddeviceownerbatterypluggedmode.md) collection|List of modes in which the device's display will stay powered-on. This collection can contain a maximum of 4 elements.|
|storageAllowUsb|Boolean|Indicates whether or not to allow USB mass storage.|
|storageBlockExternalMedia|Boolean|Indicates whether or not to block external media.|
|storageBlockUsbFileTransfer|Boolean|Indicates whether or not to block USB file transfer.|
|systemUpdateWindowStartMinutesAfterMidnight|Int32|Indicates the number of minutes after midnight that the system update window starts. Valid values 0 to 1440|
|systemUpdateWindowEndMinutesAfterMidnight|Int32|Indicates the number of minutes after midnight that the system update window ends. Valid values 0 to 1440|
|systemUpdateInstallType|[androidDeviceOwnerSystemUpdateInstallType](../resources/intune_deviceconfig_androiddeviceownersystemupdateinstalltype.md)|The type of system update configuration. Possible values are: `deviceDefault`, `postpone`, `windowed`, `automatic`.|
|usersBlockAdd|Boolean|Indicates whether or not adding users and profiles is disabled.|
|usersBlockRemove|Boolean|Indicates whether or not to disable removing other users from the device.|
|volumeBlockAdjustment|Boolean|Indicates whether or not adjusting the master volume is disabled.|
|wifiBlockEditConfigurations|Boolean|Indicates whether or not to block the user from editing the wifi connection settings.|
|wifiBlockEditPolicyDefinedConfigurations|Boolean|Indicates whether or not to block the user from editing just the networks defined by the policy.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "accountsBlockModification": true,
  "appsAllowInstallFromUnknownSources": true,
  "appsAutoUpdatePolicy": "String",
  "appsDefaultPermissionPolicy": "String",
  "bluetoothBlockConfiguration": true,
  "bluetoothBlockContactSharing": true,
  "cameraBlocked": true,
  "cellularBlockWiFiTethering": true,
  "dataRoamingBlocked": true,
  "dateTimeConfigurationBlocked": true,
  "factoryResetDeviceAdministratorEmails": [
    "String"
  ],
  "factoryResetBlocked": true,
  "kioskModeApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "microphoneForceMute": true,
  "networkEscapeHatchAllowed": true,
  "nfcBlockOutgoingBeam": true,
  "passwordBlockKeyguard": true,
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordCountToBlock": 1024,
  "passwordRequiredType": "String",
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "safeBootBlocked": true,
  "screenCaptureBlocked": true,
  "securityAllowDebuggingFeatures": true,
  "securityRequireVerifyApps": true,
  "statusBarBlocked": true,
  "stayOnModes": [
    "String"
  ],
  "storageAllowUsb": true,
  "storageBlockExternalMedia": true,
  "storageBlockUsbFileTransfer": true,
  "systemUpdateWindowStartMinutesAfterMidnight": 1024,
  "systemUpdateWindowEndMinutesAfterMidnight": 1024,
  "systemUpdateInstallType": "String",
  "usersBlockAdd": true,
  "usersBlockRemove": true,
  "volumeBlockAdjustment": true,
  "wifiBlockEditConfigurations": true,
  "wifiBlockEditPolicyDefinedConfigurations": true
}
```



