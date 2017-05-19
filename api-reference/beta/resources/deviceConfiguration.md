# deviceConfiguration resource type

Device Configuration.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurations](../api/deviceConfiguration_list.md)|[deviceConfiguration](../resources/deviceConfiguration.md) collection|List properties and relationships of the [deviceConfiguration](../resources/deviceConfiguration.md) objects.|
|[Get deviceConfiguration](../api/deviceConfiguration_get.md)|[deviceConfiguration](../resources/deviceConfiguration.md)|Read properties and relationships of the [deviceConfiguration](../resources/deviceConfiguration.md) object.|
|[assign action](../api/deviceConfiguration_assign.md)|[deviceConfigurationAssignment](../resources/deviceConfigurationAssignment.md) collection|Not yet documented|
|[List deviceConfigurationGroupAssignments](../api/deviceConfiguration_list_deviceConfigurationGroupAssignment.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|Get the deviceConfigurationGroupAssignments from the groupAssignments navigation property.|
|[List deviceConfigurationDeviceStatuss](../api/deviceConfiguration_list_deviceConfigurationDeviceStatus.md)|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Get the deviceConfigurationDeviceStatuss from the deviceStatuses navigation property.|
|[List deviceConfigurationUserStatuss](../api/deviceConfiguration_list_deviceConfigurationUserStatus.md)|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Get the deviceConfigurationUserStatuss from the userStatuses navigation property.|

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
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|The list of group assignments for the device configuration profile.|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/deviceConfigurationDeviceStatus.md) collection|Device configuration installation stauts by device.|
|userStatuses|[deviceConfigurationUserStatus](../resources/deviceConfigurationUserStatus.md) collection|Device configuration installation stauts by user.|

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


