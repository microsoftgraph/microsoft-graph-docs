# windowsInformationProtectionNetworkLearningSummary resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Windows Information Protection Network learning Summary entity.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsInformationProtectionNetworkLearningSummaries](../api/intune_wip_windowsinformationprotectionnetworklearningsummary_list.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) collection|List properties and relationships of the [windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) objects.|
|[Get windowsInformationProtectionNetworkLearningSummary](../api/intune_wip_windowsinformationprotectionnetworklearningsummary_get.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md)|Read properties and relationships of the [windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) object.|
|[Create windowsInformationProtectionNetworkLearningSummary](../api/intune_wip_windowsinformationprotectionnetworklearningsummary_create.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md)|Create a new [windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) object.|
|[Delete windowsInformationProtectionNetworkLearningSummary](../api/intune_wip_windowsinformationprotectionnetworklearningsummary_delete.md)|None|Deletes a [windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md).|
|[Update windowsInformationProtectionNetworkLearningSummary](../api/intune_wip_windowsinformationprotectionnetworklearningsummary_update.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md)|Update the properties of a [windowsInformationProtectionNetworkLearningSummary](../resources/intune_wip_windowsinformationprotectionnetworklearningsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the WindowsInformationProtectionNetworkLearningSummary.|
|url|String|Website url|
|deviceCount|Int32|Device Count|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsInformationProtectionNetworkLearningSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionNetworkLearningSummary",
  "id": "String (identifier)",
  "url": "String",
  "deviceCount": 1024
}
```



