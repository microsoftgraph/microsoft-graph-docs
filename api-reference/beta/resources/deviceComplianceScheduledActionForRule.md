# deviceComplianceScheduledActionForRule resource type

Scheduled Action for Rule
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceScheduledActionForRules](../api/deviceComplianceScheduledActionForRule_list.md)|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md) collection|List properties and relationships of the [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) objects.|
|[Get deviceComplianceScheduledActionForRule](../api/deviceComplianceScheduledActionForRule_get.md)|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md)|Read properties and relationships of the [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) object.|
|[Create deviceComplianceScheduledActionForRule](../api/deviceComplianceScheduledActionForRule_create.md)|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md)|Create a new [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) object.|
|[Delete deviceComplianceScheduledActionForRule](../api/deviceComplianceScheduledActionForRule_delete.md)|None|Deletes a [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md).|
|[Update deviceComplianceScheduledActionForRule](../api/deviceComplianceScheduledActionForRule_update.md)|[deviceComplianceScheduledActionForRule](deviceComplianceScheduledActionForRule.md)|Update the properties of a [deviceComplianceScheduledActionForRule](../resource/deviceComplianceScheduledActionForRule.md) object.|
|[List deviceComplianceActionItems](../api/deviceComplianceScheduledActionForRule_list_deviceComplianceActionItem.md)|[deviceComplianceActionItem](deviceComplianceActionItem.md) collection|Get the deviceComplianceActionItems from the scheduledActionConfigurations navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|scheduledActionConfigurations|[deviceComplianceActionItem](deviceComplianceActionItem.md) collection|The list of scheduled action configurations for this compliance policy.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceScheduledActionForRule"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceScheduledActionForRule",
  "id": "String (identifier)"
}
```

