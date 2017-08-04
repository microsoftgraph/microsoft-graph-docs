#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get notificationMessageTemplate](../api/intune_deviceconfig_notificationmessagetemplate_get.md)|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationmessagetemplate.md)|Read properties and relationships of the [notificationMessageTemplate](../resources/intune_deviceconfig_notificationmessagetemplate.md) object.|
|[Update notificationMessageTemplate](../api/intune_deviceconfig_notificationmessagetemplate_update.md)|[notificationMessageTemplate](../resources/intune_deviceconfig_notificationmessagetemplate.md)|Update the properties of a [notificationMessageTemplate](../resources/intune_deviceconfig_notificationmessagetemplate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. This property is read-only.|

## Relationships
None
## JSON Representation
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
  "id": "String (identifier)"
}
```



