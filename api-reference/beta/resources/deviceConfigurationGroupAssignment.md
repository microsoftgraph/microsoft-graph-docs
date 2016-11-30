# deviceConfigurationGroupAssignment resource type

Device configuration group assignment.

Inherits from [deviceConfigurationAssignment](deviceConfigurationAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationGroupAssignments](../api/deviceConfigurationGroupAssignment_list.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](../resource/deviceConfigurationGroupAssignment.md) objects.|
|[Get deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_get.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md)|Read properties and relationships of the [deviceConfigurationGroupAssignment](../resource/deviceConfigurationGroupAssignment.md) object.|
|[Create deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_create.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md)|Create a new [deviceConfigurationGroupAssignment](../resource/deviceConfigurationGroupAssignment.md) object.|
|[Delete deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_delete.md)|None|Deletes a [deviceConfigurationGroupAssignment](../resource/deviceConfigurationGroupAssignment.md).|
|[Update deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_update.md)|[deviceConfigurationGroupAssignment](deviceConfigurationGroupAssignment.md)|Update the properties of a [deviceConfigurationGroupAssignment](../resource/deviceConfigurationGroupAssignment.md) object.|
|[Get deviceConfiguration](../api/deviceConfigurationGroupAssignment_get_deviceConfiguration.md)|[deviceConfiguration](deviceConfiguration.md)|Get the [deviceConfiguration](deviceConfiguration.md) from the deviceConfiguration navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](deviceConfigurationAssignment.md).|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfiguration|[deviceConfiguration](deviceConfiguration.md)|The navigation link to the Device Configuration being targeted. Inherited from [deviceConfigurationAssignment](deviceConfigurationAssignment.md)|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationGroupAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationGroupAssignment",
  "id": "String (identifier)",
  "targetGroupId": "String"
}
```

