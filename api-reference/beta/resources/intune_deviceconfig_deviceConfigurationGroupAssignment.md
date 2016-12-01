# deviceConfigurationGroupAssignment resource type

Device configuration group assignment.

Inherits from [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceConfigurationAssignment.md)

### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceConfigurationGroupAssignments](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_list.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) collection|List properties and relationships of the [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) objects.|
|[Get deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_get.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md)|Read properties and relationships of the [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) object.|
|[Create deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_create.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md)|Create a new [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) object.|
|[Delete deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_delete.md)|None|Deletes a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md).|
|[Update deviceConfigurationGroupAssignment](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_update.md)|[deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md)|Update the properties of a [deviceConfigurationGroupAssignment](../resources/intune_deviceconfig_deviceConfigurationGroupAssignment.md) object.|
|[Get deviceConfiguration](../api/intune_deviceconfig_deviceConfigurationGroupAssignment_get_deviceConfiguration.md)|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|Get the [deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md) from the deviceConfiguration navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [deviceConfigurationAssignment](../resources/intune_deviceconfig_deviceConfigurationAssignment.md)|
|targetGroupId|String|The Id of the AAD group we are targeting the device configuration to.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|deviceConfiguration|[deviceConfiguration](../resources/intune_deviceconfig_deviceConfiguration.md)|The navigation link to the Device Configuration being targeted. Inherited from [deviceConfigurationAssignment](intune_deviceconfig_deviceConfigurationAssignment.md)|

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


