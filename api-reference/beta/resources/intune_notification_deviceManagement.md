# deviceManagement resource type

Singleton entity that acts as a container for all device management functionality.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_notification_deviceManagement_get.md)|[deviceManagement](../resources/intune_notification_deviceManagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_notification_deviceManagement.md) object.|
|[Update deviceManagement](../api/intune_notification_deviceManagement_update.md)|[deviceManagement](../resources/intune_notification_deviceManagement.md)|Update the properties of a [deviceManagement](../resources/intune_notification_deviceManagement.md) object.|
|[List notificationMessageTemplates](../api/intune_notification_deviceManagement_list_notificationMessageTemplate.md)|[notificationMessageTemplate](../resources/intune_notification_notificationMessageTemplate.md) collection|Get the notificationMessageTemplates from the notificationMessageTemplates navigation property.|
|[Create notificationMessageTemplate](../api/intune_notification_deviceManagement_create_notificationMessageTemplate.md)|[notificationMessageTemplate](../resources/intune_notification_notificationMessageTemplate.md)|Create a new [notificationMessageTemplate](../resources/intune_notification_notificationMessageTemplate.md) by posting to the notificationMessageTemplates collection.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune_notification_notificationMessageTemplate.md) collection|The Notification Message Templates.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



