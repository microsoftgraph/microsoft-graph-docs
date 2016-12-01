# deviceConfiguration resource type

Device Configuration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurations](../api/intune_deviceconfig_deviceConfiguration_list.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) collection|List properties and relationships of the [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) objects.|
|[Get deviceConfiguration](../api/intune_deviceconfig_deviceConfiguration_get.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|Read properties and relationships of the [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) object.|
|[assign action](../api/intune_deviceconfig_deviceConfiguration_assign.md)|[deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceConfigurationAssignment.md) collection|Not yet documented|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_deviceConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/intune_deviceconfig_deviceConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/intune_deviceconfig_deviceConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|createdDateTime|DateTimeOffset|DateTime the object was created.|
|description|String|Admin provided description of the Device Configuration.|
|displayName|String|Admin provided name of the device configuration.|
|version|Int32|Version of the device configuration.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile.|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune_deviceconfig_deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device.|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune_deviceconfig_deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024
}
```



