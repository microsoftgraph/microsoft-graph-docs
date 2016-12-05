# deviceComplianceActionItem resource type

Scheduled Action Configuration
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List deviceComplianceActionItems](../api/intune_deviceconfig_deviceComplianceActionItem_list.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) collection|List properties and relationships of the [deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) objects.|
|[Get deviceComplianceActionItem](../api/intune_deviceconfig_deviceComplianceActionItem_get.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md)|Read properties and relationships of the [deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) object.|
|[Create deviceComplianceActionItem](../api/intune_deviceconfig_deviceComplianceActionItem_create.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md)|Create a new [deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) object.|
|[Delete deviceComplianceActionItem](../api/intune_deviceconfig_deviceComplianceActionItem_delete.md)|None|Deletes a [deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md).|
|[Update deviceComplianceActionItem](../api/intune_deviceconfig_deviceComplianceActionItem_update.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md)|Update the properties of a [deviceComplianceActionItem](../resources/intune_deviceconfig_deviceComplianceActionItem.md) object.|
|[Get notificationMessageTemplate](../api/intune_deviceconfig_deviceComplianceActionItem_get_notificationMessageTemplate.md)|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md)|Get the [notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md) from the notificationMessageTemplate navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced.|
|actionType|String|What action to take Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|notificationMessageTemplate|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md)|Notification message template.|

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


