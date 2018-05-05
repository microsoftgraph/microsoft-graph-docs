# deviceComplianceActionItem resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Scheduled Action Configuration
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceComplianceActionItems](../api/intune_deviceconfig_devicecomplianceactionitem_list.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md) collection|List properties and relationships of the [deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md) objects.|
|[Get deviceComplianceActionItem](../api/intune_deviceconfig_devicecomplianceactionitem_get.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md)|Read properties and relationships of the [deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|
|[Create deviceComplianceActionItem](../api/intune_deviceconfig_devicecomplianceactionitem_create.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md)|Create a new [deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|
|[Delete deviceComplianceActionItem](../api/intune_deviceconfig_devicecomplianceactionitem_delete.md)|None|Deletes a [deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md).|
|[Update deviceComplianceActionItem](../api/intune_deviceconfig_devicecomplianceactionitem_update.md)|[deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md)|Update the properties of a [deviceComplianceActionItem](../resources/intune_deviceconfig_devicecomplianceactionitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|gracePeriodHours|Int32|Number of hours to wait till the action will be enforced. Valid values 0 to 8760|
|actionType|[deviceComplianceActionType](../resources/intune_deviceconfig_devicecomplianceactiontype.md)|What action to take. Possible values are: `noAction`, `notification`, `block`, `retire`, `wipe`, `removeResourceAccessProfiles`.|
|notificationTemplateId|String|What notification Message template to use|
|notificationMessageCCList|String collection|A list of group IDs to speicify who to CC this notification message to.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceActionItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceComplianceActionItem",
  "id": "String (identifier)",
  "gracePeriodHours": 1024,
  "actionType": "String",
  "notificationTemplateId": "String",
  "notificationMessageCCList": [
    "String"
  ]
}
```



