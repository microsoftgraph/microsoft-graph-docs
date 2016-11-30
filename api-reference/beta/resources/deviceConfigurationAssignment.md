# deviceConfigurationAssignment resource type

Not yet documented
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationAssignments](../api/deviceConfigurationAssignment_list.md)|[deviceConfigurationAssignment](deviceConfigurationAssignment.md) collection|List properties and relationships of the [deviceConfigurationAssignment](../resource/deviceConfigurationAssignment.md) objects.|
|[Get deviceConfigurationAssignment](../api/deviceConfigurationAssignment_get.md)|[deviceConfigurationAssignment](deviceConfigurationAssignment.md)|Read properties and relationships of the [deviceConfigurationAssignment](../resource/deviceConfigurationAssignment.md) object.|
|[Get deviceConfiguration](../api/deviceConfigurationAssignment_get_deviceConfiguration.md)|[deviceConfiguration](deviceConfiguration.md)|Get the [deviceConfiguration](deviceConfiguration.md) from the deviceConfiguration navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfiguration|[deviceConfiguration](deviceConfiguration.md)|The navigation link to the Device Configuration being targeted.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationAssignment"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationAssignment",
  "id": "String (identifier)"
}
```


