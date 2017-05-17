# deviceManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](../api/intune_wip_devicemanagement_get.md)|[deviceManagement](../resources/intune_wip_devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune_wip_devicemanagement.md) object.|
|[Update deviceManagement](../api/intune_wip_devicemanagement_update.md)|[deviceManagement](../resources/intune_wip_devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune_wip_devicemanagement.md) object.|
|[List windowsInformationProtectionAppLearningSummaries](../api/intune_wip_devicemanagement_list_windowsinformationprotectionapplearningsummary.md)|[windowsInformationProtectionAppLearningSummary](../resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|Get the windowsInformationProtectionAppLearningSummaries from the windowsInformationProtectionAppLearningSummaries navigation property.|
|[Create windowsInformationProtectionAppLearningSummary](../api/intune_wip_devicemanagement_create_windowsinformationprotectionapplearningsummary.md)|[windowsInformationProtectionAppLearningSummary](../resources/intune_wip_windowsinformationprotectionapplearningsummary.md)|Create a new [windowsInformationProtectionAppLearningSummary](../resources/intune_wip_windowsinformationprotectionapplearningsummary.md) by posting to the windowsInformationProtectionAppLearningSummaries collection.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|windowsInformationProtectionAppLearningSummaries|[windowsInformationProtectionAppLearningSummary](../resources/intune_wip_windowsinformationprotectionapplearningsummary.md) collection|The windows information protection app learning summaries.|

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



