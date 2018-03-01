# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune_auditing_devicemanagement_get.md)|[deviceManagement](../resources/intune_auditing_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_auditing_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_auditing_devicemanagement_update.md)|[deviceManagement](../resources/intune_auditing_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_auditing_devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|auditEvents|[auditEvent](../resources/intune_auditing_auditevent.md) collection|The Audit Events|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



