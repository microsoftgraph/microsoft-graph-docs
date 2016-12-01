# windows10CustomConfiguration resource type

This topic provides descriptions of the declared methods, properties and relationships exposed by the windows10CustomConfiguration resource.

Inherits from [deviceConfiguration](../resources/deviceConfiguration.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List windows10CustomConfigurations](../api/windows10CustomConfiguration_list.md)|[windows10CustomConfiguration](../resources/windows10CustomConfiguration.md) collection|List properties and relationships of the [windows10CustomConfiguration](../resources/windows10CustomConfiguration.md) objects.|
|[Get windows10CustomConfiguration](../api/windows10CustomConfiguration_get.md)|[windows10CustomConfiguration](../resources/windows10CustomConfiguration.md)|Read properties and relationships of the [windows10CustomConfiguration](../resources/windows10CustomConfiguration.md) object.|
|[Create windows10CustomConfiguration](../api/windows10CustomConfiguration_create.md)|[windows10CustomConfiguration](../resources/windows10CustomConfiguration.md)|Create a new [windows10CustomConfiguration](../resources/windows10CustomConfiguration.md) object.|
|[Delete windows10CustomConfiguration](../api/windows10CustomConfiguration_delete.md)|None|Deletes a [windows10CustomConfiguration](../resources/windows10CustomConfiguration.md).|
|[Update windows10CustomConfiguration](../api/windows10CustomConfiguration_update.md)|[windows10CustomConfiguration](../resources/windows10CustomConfiguration.md)|Update the properties of a [windows10CustomConfiguration](../resources/windows10CustomConfiguration.md) object.|
|[List deviceConfigurationGroupAssignments](../api/windows10CustomConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/windows10CustomConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/windows10CustomConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/deviceConfiguration.md)|
|omaSettings|[omaSetting](../resources/omaSetting.md) collection|OMA settings.|

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
  "@odata.type": "microsoft.graph.windows10CustomConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.windows10CustomConfiguration",
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

