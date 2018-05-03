# notificationMessageTemplate resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Notification messages are messages that are sent to end users who are determined to be not-compliant with the compliance policies defined by the administrator. Administrators choose notifications and configure them in the Intune Admin Console using the compliance policy creation page under the “Actions for non-compliance” section. Use the notificationMessageTemplate object to create your own custom notifications for administrators to choose while configuring actions for non-compliance.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List notificationMessageTemplates](../api/intune_notification_notificationmessagetemplate_list.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) collection|List properties and relationships of the [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) objects.|
|[Get notificationMessageTemplate](../api/intune_notification_notificationmessagetemplate_get.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md)|Read properties and relationships of the [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) object.|
|[Create notificationMessageTemplate](../api/intune_notification_notificationmessagetemplate_create.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md)|Create a new [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) object.|
|[Delete notificationMessageTemplate](../api/intune_notification_notificationmessagetemplate_delete.md)|None|Deletes a [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md).|
|[Update notificationMessageTemplate](../api/intune_notification_notificationmessagetemplate_update.md)|[notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md)|Update the properties of a [notificationMessageTemplate](../resources/intune_notification_notificationmessagetemplate.md) object.|
|[sendTestMessage action](../api/intune_notification_notificationmessagetemplate_sendtestmessage.md)|None|Sends test message using the specified notificationMessageTemplate in the default locale|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified.|
|displayName|String|Display name for the Notification Message Template.|
|defaultLocale|String|The default locale to fallback onto when the requested locale is not available.|
|brandingOptions|[notificationTemplateBrandingOptions](../resources/intune_notification_notificationtemplatebrandingoptions.md)|The Message Template Branding Options. Branding is defined in the Intune Admin Console. Possible values are: `none`, `includeCompanyLogo`, `includeCompanyName`, `includeContactInformation`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizedNotificationMessages|[localizedNotificationMessage](../resources/intune_notification_localizednotificationmessage.md) collection|The list of localized messages for this Notification Message Template.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.notificationMessageTemplate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.notificationMessageTemplate",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "defaultLocale": "String",
  "brandingOptions": "String"
}
```



