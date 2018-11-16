﻿# iosUpdateConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

IOS Update Configuration, allows you to configure time window within week to install iOS updates

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosUpdateConfigurations](../api/intune_deviceconfig_iosupdateconfiguration_list.md)|[iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md) collection|List properties and relationships of the [iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md) objects.|
|[Get iosUpdateConfiguration](../api/intune_deviceconfig_iosupdateconfiguration_get.md)|[iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md)|Read properties and relationships of the [iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md) object.|
|[Create iosUpdateConfiguration](../api/intune_deviceconfig_iosupdateconfiguration_create.md)|[iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md)|Create a new [iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md) object.|
|[Delete iosUpdateConfiguration](../api/intune_deviceconfig_iosupdateconfiguration_delete.md)|None|Deletes a [iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md).|
|[Update iosUpdateConfiguration](../api/intune_deviceconfig_iosupdateconfiguration_update.md)|[iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md)|Update the properties of a [iosUpdateConfiguration](../resources/intune_deviceconfig_iosupdateconfiguration.md) object.|

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
|isEnabled|Boolean|Is setting enabled in UI|
|activeHoursStart|TimeOfDay|Active Hours Start (active hours mean the time window when updates install should not happen)|
|activeHoursEnd|TimeOfDay|Active Hours End (active hours mean the time window when updates install should not happen)|
|scheduledInstallDays|[dayOfWeek](../resources/intune_deviceconfig_dayofweek.md) collection|Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.|
|utcTimeOffsetInMinutes|Int32|UTC Time Offset indicated in minutes|
|enforcedSoftwareUpdateDelayInDays|Int32|Days before software updates are visible to iOS devices ranging from 0 to 90 inclusive|

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
  "@odata.type": "microsoft.graph.iosUpdateConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosUpdateConfiguration",
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
  "isEnabled": true,
  "activeHoursStart": "String (time of day)",
  "activeHoursEnd": "String (time of day)",
  "scheduledInstallDays": [
    "String"
  ],
  "utcTimeOffsetInMinutes": 1024,
  "enforcedSoftwareUpdateDelayInDays": 1024
}
```





