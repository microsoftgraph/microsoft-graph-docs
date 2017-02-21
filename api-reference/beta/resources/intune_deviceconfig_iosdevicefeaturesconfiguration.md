# iosDeviceFeaturesConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

iOS Device Features Profile.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosDeviceFeaturesConfigurations](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_list.md)|[iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) collection|List properties and relationships of the [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) objects.|
|[Get iosDeviceFeaturesConfiguration](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_get.md)|[iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)|Read properties and relationships of the [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) object.|
|[Create iosDeviceFeaturesConfiguration](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_create.md)|[iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)|Create a new [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) object.|
|[Delete iosDeviceFeaturesConfiguration](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_delete.md)|None|Deletes a [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md).|
|[Update iosDeviceFeaturesConfiguration](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_update.md)|[iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)|Update the properties of a [iosDeviceFeaturesConfiguration](../resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_iosdevicefeaturesconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSharingAssetTagInformation|String|Asset tag information for the device, displayed on the login window and lock screen.|
|deviceSharingLockScreenFootnote|String|A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.|
|homeScreenLayoutDockIcons|[iosHomeScreenItem](../resources/intune_deviceconfig_ioshomescreenitem.md) collection|A list of app and folders to appear on the Home Screen Dock|
|homeScreenLayoutPages|[iosHomeScreenPage](../resources/intune_deviceconfig_ioshomescreenpage.md) collection|A list of pages on the Home Screen|
|notificationSettings|[iosNotificationSettings](../resources/intune_deviceconfig_iosnotificationsettings.md) collection|Notification settings for each bundle identifier. Applicable to devices in supervised mode only (iOS 9.3 and later).|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation stauts by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosDeviceFeaturesConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosDeviceFeaturesConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "deviceSharingAssetTagInformation": "String",
  "deviceSharingLockScreenFootnote": "String",
  "homeScreenLayoutDockIcons": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenItem",
      "displayName": "String"
    }
  ],
  "homeScreenLayoutPages": [
    {
      "@odata.type": "microsoft.graph.iosHomeScreenPage",
      "icons": [
        {
          "@odata.type": "microsoft.graph.iosHomeScreenItem",
          "displayName": "String"
        }
      ]
    }
  ],
  "notificationSettings": [
    {
      "@odata.type": "microsoft.graph.iosNotificationSettings",
      "bundleIdentifier": "String",
      "notificationsEnabled": true,
      "showInNotificationCenter": true,
      "showInLockScreen": true,
      "alertType": "String",
      "badgesEnabled": true,
      "soundsEnabled": true
    }
  ]
}
```



