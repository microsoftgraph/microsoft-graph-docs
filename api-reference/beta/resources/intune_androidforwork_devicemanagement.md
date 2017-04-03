# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for Android for Work settings functionality under device management.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_androidforwork_devicemanagement_get.md)|[deviceManagement](../resources/intune_androidforwork_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_androidforwork_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_androidforwork_devicemanagement_update.md)|[deviceManagement](../resources/intune_androidforwork_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_androidforwork_devicemanagement.md) object.|
|[Get androidForWorkSettings](../api/intune_androidforwork_devicemanagement_get_androidforworksettings.md)|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|Get the [androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md) from the androidForWorkSettings navigation property.|
|[List androidForWorkAppConfigurationSchemas](../api/intune_androidforwork_devicemanagement_list_androidforworkappconfigurationschema.md)|[androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|Get the androidForWorkAppConfigurationSchemas from the androidForWorkAppConfigurationSchemas navigation property.|
|[Create androidForWorkAppConfigurationSchema](../api/intune_androidforwork_devicemanagement_create_androidforworkappconfigurationschema.md)|[androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md)|Create a new [androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md) by posting to the androidForWorkAppConfigurationSchemas collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|androidForWorkSettings|[androidForWorkSettings](../resources/intune_androidforwork_androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/intune_androidforwork_androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|

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



