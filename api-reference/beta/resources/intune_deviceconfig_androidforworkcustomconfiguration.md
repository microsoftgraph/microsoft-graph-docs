# androidForWorkCustomConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Android For Work custom configuration

Inherits from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidForWorkCustomConfigurations](../api/intune_deviceconfig_androidforworkcustomconfiguration_list.md)|[androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md) collection|List properties and relationships of the [androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md) objects.|
|[Get androidForWorkCustomConfiguration](../api/intune_deviceconfig_androidforworkcustomconfiguration_get.md)|[androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md)|Read properties and relationships of the [androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md) object.|
|[Create androidForWorkCustomConfiguration](../api/intune_deviceconfig_androidforworkcustomconfiguration_create.md)|[androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md)|Create a new [androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md) object.|
|[Delete androidForWorkCustomConfiguration](../api/intune_deviceconfig_androidforworkcustomconfiguration_delete.md)|None|Deletes a [androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md).|
|[Update androidForWorkCustomConfiguration](../api/intune_deviceconfig_androidforworkcustomconfiguration_update.md)|[androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md)|Update the properties of a [androidForWorkCustomConfiguration](../resources/intune_deviceconfig_androidforworkcustomconfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_androidforworkcustomconfiguration_list_deviceconfigurationgroupassignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuses](../api/intune_deviceconfig_androidforworkcustomconfiguration_list_deviceconfigurationdevicestatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) collection|Get the deviceConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuses](../api/intune_deviceconfig_androidforworkcustomconfiguration_list_deviceconfigurationuserstatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceconfigurationuserstatus.md) collection|Get the deviceConfigurationUserStatuses from the userStatuses navigation property.|
|[Get deviceConfigurationDeviceOverview](../api/intune_deviceconfig_androidforworkcustomconfiguration_get_deviceconfigurationdeviceoverview.md)|[deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)|Get the [deviceConfigurationDeviceOverview](../resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) from the deviceStatusOverview navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|omaSettings|[omaSetting](../resources/intune_deviceconfig_omasetting.md) collection|OMA settings.|

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
  "@odata.type": "microsoft.graph.androidForWorkCustomConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.androidForWorkCustomConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "omaSettings": [
    {
      "@odata.type": "microsoft.graph.omaSetting",
      "displayName": "String",
      "description": "String",
      "omaUri": "String"
    }
  ]
}
```



