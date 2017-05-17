# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_endpointprotection_devicemanagement_get.md)|[deviceManagement](../resources/intune_endpointprotection_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_endpointprotection_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_endpointprotection_devicemanagement_update.md)|[deviceManagement](../resources/intune_endpointprotection_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_endpointprotection_devicemanagement.md) object.|
|[List windowsMalwareInformations](../api/intune_endpointprotection_devicemanagement_list_windowsmalwareinformation.md)|[windowsMalwareInformation](../resources/intune_endpointprotection_windowsmalwareinformation.md) collection|Get the windowsMalwareInformations from the windowsMalwareInformation navigation property.|
|[Create windowsMalwareInformation](../api/intune_endpointprotection_devicemanagement_create_windowsmalwareinformation.md)|[windowsMalwareInformation](../resources/intune_endpointprotection_windowsmalwareinformation.md)|Create a new [windowsMalwareInformation](../resources/intune_endpointprotection_windowsmalwareinformation.md) by posting to the windowsMalwareInformation collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Unique Identifier|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|windowsMalwareInformation|[windowsMalwareInformation](../resources/intune_endpointprotection_windowsmalwareinformation.md) collection|The list of affected malware in the tenant.|

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



