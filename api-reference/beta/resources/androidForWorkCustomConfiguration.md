# androidForWorkCustomConfiguration resource type

Android For Work custom configuration

Inherits from [deviceConfiguration](deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List androidForWorkCustomConfigurations](../api/androidForWorkCustomConfiguration_list.md)|[androidForWorkCustomConfiguration](androidForWorkCustomConfiguration.md) collection|List properties and relationships of the [androidForWorkCustomConfiguration](../resource/androidForWorkCustomConfiguration.md) objects.|
|[Get androidForWorkCustomConfiguration](../api/androidForWorkCustomConfiguration_get.md)|[androidForWorkCustomConfiguration](androidForWorkCustomConfiguration.md)|Read properties and relationships of the [androidForWorkCustomConfiguration](../resource/androidForWorkCustomConfiguration.md) object.|
|[Create androidForWorkCustomConfiguration](../api/androidForWorkCustomConfiguration_create.md)|[androidForWorkCustomConfiguration](androidForWorkCustomConfiguration.md)|Create a new [androidForWorkCustomConfiguration](../resource/androidForWorkCustomConfiguration.md) object.|
|[Delete androidForWorkCustomConfiguration](../api/androidForWorkCustomConfiguration_delete.md)|None|Deletes a [androidForWorkCustomConfiguration](../resource/androidForWorkCustomConfiguration.md).|
|[Update androidForWorkCustomConfiguration](../api/androidForWorkCustomConfiguration_update.md)|[androidForWorkCustomConfiguration](androidForWorkCustomConfiguration.md)|Update the properties of a [androidForWorkCustomConfiguration](../resource/androidForWorkCustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/androidForWorkCustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/androidForWorkCustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/androidForWorkCustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](deviceConfiguration.md).|
|omaSettings|[omaSetting](omaSetting.md) collection|OMA settings.|

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

