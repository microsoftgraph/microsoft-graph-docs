# localizedNotificationMessage resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The text content of a Notification Message Template for the specified locale.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List localizedNotificationMessages](../api/intune_notification_localizednotificationmessage_list.md)|[localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) collection|List properties and relationships of the [localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) objects.|
|[Get localizedNotificationMessage](../api/intune_notification_localizednotificationmessage_get.md)|[localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md)|Read properties and relationships of the [localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) object.|
|[Create localizedNotificationMessage](../api/intune_notification_localizednotificationmessage_create.md)|[localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md)|Create a new [localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) object.|
|[Delete localizedNotificationMessage](../api/intune_notification_localizednotificationmessage_delete.md)|None|Deletes a [localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md).|
|[Update localizedNotificationMessage](../api/intune_notification_localizednotificationmessage_update.md)|[localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md)|Update the properties of a [localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|locale|String|The Locale for which this message is destined.|
|subject|String|The Message Template Subject.|
|messageTemplate|String|The Message Template content.|
|isDefault|Boolean|Flag to indicate whether or not this is the default locale for language fallback. This flag can only be set. To unset, set this property to true on another Localized Notification Message.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.localizedNotificationMessage"
}-->
``` json
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



