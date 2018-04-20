# windowsDomainJoinConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Domain Join device configuration.

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDomainJoinConfigurations](../api/intune_deviceconfig_windowsdomainjoinconfiguration_list.md)|[windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) collection|List properties and relationships of the [windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) objects.|
|[Get windowsDomainJoinConfiguration](../api/intune_deviceconfig_windowsdomainjoinconfiguration_get.md)|[windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md)|Read properties and relationships of the [windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) object.|
|[Create windowsDomainJoinConfiguration](../api/intune_deviceconfig_windowsdomainjoinconfiguration_create.md)|[windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md)|Create a new [windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) object.|
|[Delete windowsDomainJoinConfiguration](../api/intune_deviceconfig_windowsdomainjoinconfiguration_delete.md)|None|Deletes a [windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md).|
|[Update windowsDomainJoinConfiguration](../api/intune_deviceconfig_windowsdomainjoinconfiguration_update.md)|[windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md)|Update the properties of a [windowsDomainJoinConfiguration](../resources/intune_deviceconfig_windowsdomainjoinconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|computerNameStaticPrefix|String|Fixed prefix to be used for computer name. This property can only be set during creation.|
|computerNameSuffixRandomCharCount|Int32|Dynamically generated characters used as suffix for computer name. Valid values 3 to 14. This property can only be set during creation.|
|activeDirectoryDomainName|String|Active Directory domain name to join. This property can only be set during creation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Device configuration installation stauts by user. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune_deviceconfig_settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDomainJoinConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDomainJoinConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "computerNameStaticPrefix": "String",
  "computerNameSuffixRandomCharCount": 1024,
  "activeDirectoryDomainName": "String"
}
```



