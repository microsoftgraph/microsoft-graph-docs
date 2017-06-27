# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_notification_devicemanagement_get.md)|[deviceManagement](../resources/intune_notification_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_notification_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_notification_devicemanagement_update.md)|[deviceManagement](../resources/intune_notification_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_notification_devicemanagement.md) object.|
|[List notificationMessageTemplates](../api/intune_notification_notificationmessagetemplate_list.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) collection|List properties and relationships of the [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) objects.|
|[Create notificationMessageTemplate](../api/intune_notification_notificationmessagetemplate_create.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md)|Create a new [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|notificationMessageTemplates|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) collection|The Notification Message Templates.|

## JSON Representation
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



