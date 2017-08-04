# deviceManagement resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_remoteassistance_devicemanagement_get.md)|[deviceManagement](../resources/intune_remoteassistance_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_remoteassistance_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_remoteassistance_devicemanagement_update.md)|[deviceManagement](../resources/intune_remoteassistance_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_remoteassistance_devicemanagement.md) object.|
|[List remoteAssistancePartners](../api/intune_remoteassistance_remoteassistancepartner_list.md)|[remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) collection|List properties and relationships of the [remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) objects.|
|[Create remoteAssistancePartner](../api/intune_remoteassistance_remoteassistancepartner_create.md)|[remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md)|Create a new [remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|remoteAssistancePartners|[remoteAssistancePartner](../resources/intune_remoteassistance_remoteassistancepartner.md) collection|The remote assist partners.|

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



