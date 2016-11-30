# deviceComplianceActionItem resource type

Scheduled Action Configuration
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceActionItems](../api/deviceComplianceActionItem_list.md)|[deviceComplianceActionItem](deviceComplianceActionItem.md) collection|List properties and relationships of the [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) objects.|
|[Get deviceComplianceActionItem](../api/deviceComplianceActionItem_get.md)|[deviceComplianceActionItem](deviceComplianceActionItem.md)|Read properties and relationships of the [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object.|
|[Create deviceComplianceActionItem](../api/deviceComplianceActionItem_create.md)|[deviceComplianceActionItem](deviceComplianceActionItem.md)|Create a new [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object.|
|[Delete deviceComplianceActionItem](../api/deviceComplianceActionItem_delete.md)|None|Deletes a [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md).|
|[Update deviceComplianceActionItem](../api/deviceComplianceActionItem_update.md)|[deviceComplianceActionItem](deviceComplianceActionItem.md)|Update the properties of a [deviceComplianceActionItem](../resource/deviceComplianceActionItem.md) object.|
|[Get notificationMessageTemplate](../api/deviceComplianceActionItem_get_notificationMessageTemplate.md)|[notificationMessageTemplate](notificationMessageTemplate.md)|Get the [notificationMessageTemplate](notificationMessageTemplate.md) from the notificationMessageTemplate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced.|
|actionType|String|What action to take Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|notificationMessageTemplate|[notificationMessageTemplate](notificationMessageTemplate.md)|Notification message template.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceActionItem"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceComplianceActionItem",
  "id": "String (identifier)",
  "gracePeriodHours": 1024,
  "actionType": "String"
}
```

