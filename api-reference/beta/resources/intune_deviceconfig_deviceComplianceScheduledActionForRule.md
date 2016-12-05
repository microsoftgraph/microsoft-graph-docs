# deviceComplianceScheduledActionForRule resource type

Scheduled Action for Rule
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceScheduledActionForRules](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_list.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) collection|List properties and relationships of the [deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) objects.|
|[Get deviceComplianceScheduledActionForRule](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_get.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md)|Read properties and relationships of the [deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) object.|
|[Create deviceComplianceScheduledActionForRule](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_create.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md)|Create a new [deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) object.|
|[Delete deviceComplianceScheduledActionForRule](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_delete.md)|None|Deletes a [deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md).|
|[Update deviceComplianceScheduledActionForRule](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_update.md)|[deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md)|Update the properties of a [deviceComplianceScheduledActionForRule](../resources/intune_deviceconfig_deviceComplianceScheduledActionForRule.md) object.|
|[List deviceComplianceActionItems](../api/intune_deviceconfig_deviceComplianceScheduledActionForRule_list_deviceComplianceActionItem.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) collection|Get the deviceComplianceActionItems from the scheduledActionConfigurations navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|scheduledActionConfigurations|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) collection|The list of scheduled action configurations for this compliance policy.|

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


