# deviceConfigurationGroupAssignment resource type

Device configuration group assignment.

Inherits from [deviceConfigurationAssignment](deviceConfigurationAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationGroupAssignments](../api/deviceConfigurationGroupAssignment_list.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) objects.|
|[Get deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_get.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md)|Read properties and relationships of the [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object.|
|[Create deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_create.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md)|Create a new [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object.|
|[Delete deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_delete.md)|None|Deletes a [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md).|
|[Update deviceConfigurationGroupAssignment](../api/deviceConfigurationGroupAssignment_update.md)|[deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md)|Update the properties of a [deviceConfigurationGroupAssignment](../resources/deviceConfigurationGroupAssignment.md) object.|
|[Get deviceConfiguration](../api/deviceConfigurationGroupAssignment_get_deviceConfiguration.md)|[deviceConfiguration](../resources/deviceConfiguration.md)|Get the [deviceConfiguration](../resources/deviceConfiguration.md) from the deviceConfiguration navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](deviceConfigurationAssignment.md).|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfiguration|[deviceConfiguration](../resources/deviceConfiguration.md)|The navigation link to the Device Configuration being targeted. Inherited from [deviceConfigurationAssignment](deviceConfigurationAssignment.md)|

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

