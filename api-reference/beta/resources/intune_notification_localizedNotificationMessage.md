# localizedNotificationMessage resource type

The text content of a Notification Message Template for the specified locale.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[List localizedNotificationMessages](../api/intune_notification_localizedNotificationMessage_list.md)|[localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md) collection|List properties and relationships of the [localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md) objects.|
|[Get localizedNotificationMessage](../api/intune_notification_localizedNotificationMessage_get.md)|[localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md)|Read properties and relationships of the [localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md) object.|
|[Create localizedNotificationMessage](../api/intune_notification_localizedNotificationMessage_create.md)|[localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md)|Create a new [localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md) object.|
|[Delete localizedNotificationMessage](../api/intune_notification_localizedNotificationMessage_delete.md)|None|Deletes a [localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md).|
|[Update localizedNotificationMessage](../api/intune_notification_localizedNotificationMessage_update.md)|[localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md)|Update the properties of a [localizedNotificationMessage](../resources/intune_notification_localizedNotificationMessage.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|locale|String|The Locale for which this message is destined.|
|subject|String|The Message Template Subject.|
|messageTemplate|String|The Message Template content.|
|isDefault|Boolean|Flag to indicate whether or not this is the default locale for language fallback. This flag can only be set. To unset, set this property to true on another Localized Notification Message.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.localizedNotificationMessage"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.localizedNotificationMessage",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "locale": "String",
  "subject": "String",
  "messageTemplate": "String",
  "isDefault": true
}
```


