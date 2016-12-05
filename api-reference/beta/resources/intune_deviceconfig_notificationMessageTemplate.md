# notificationMessageTemplate resource type

Notification messages are messages that are sent to end users who are determined to be not-compliant with the compliance policies defined by the administrator. Administrators choose notifications and configure them in the Intune Admin Console using the compliance policy creation page under the “Actions for non-compliance” section. Use the notificationMessageTemplate object to create your own custom notifications for administrators to choose while configuring actions for non-compliance.
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get notificationMessageTemplate](../api/intune_deviceconfig_notificationMessageTemplate_get.md)|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md)|Read properties and relationships of the [notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md) object.|
|[Update notificationMessageTemplate](../api/intune_deviceconfig_notificationMessageTemplate_update.md)|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md)|Update the properties of a [notificationMessageTemplate](../resources/intune_deviceconfig_notificationMessageTemplate.md) object.|
|[List localizedNotificationMessages](../api/intune_deviceconfig_notificationMessageTemplate_list_localizedNotificationMessage.md)|[localizedNotificationMessage](../resources/intune_deviceconfig_localizedNotificationMessage.md) collection|Get the localizedNotificationMessages from the localizedNotificationMessages navigation property.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Display name for the Notification Message Template.|
|defaultLocale|String|The default locale to fallback onto when the requested locale is not available.|
|brandingOptions|String|The Message Template Branding Options. Branding is defined in the Intune Admin Console. Possible values are: `none`, `includeCompanyLogo`, `includeCompanyName`, `includeContactInformation`.|

### Relationships
|Relationship|Type|Description|
|---|---|---|
|localizedNotificationMessages|[localizedNotificationMessage](../resources/intune_deviceconfig_localizedNotificationMessage.md) collection|The list of localized messages for this Notification Message Template.|

### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.notificationMessageTemplate"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.notificationMessageTemplate",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "defaultLocale": "String",
  "brandingOptions": "String"
}
```


