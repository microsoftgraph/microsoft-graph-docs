---
title: "windowsInformationProtectionNetworkLearningSummary resource type"
description: "Windows Information Protection Network learning Summary entity."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsInformationProtectionNetworkLearningSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Information Protection Network learning Summary entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsInformationProtectionNetworkLearningSummaries](../api/intune-wip-windowsinformationprotectionnetworklearningsummary-list.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) collection|List properties and relationships of the [windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) objects.|
|[Get windowsInformationProtectionNetworkLearningSummary](../api/intune-wip-windowsinformationprotectionnetworklearningsummary-get.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md)|Read properties and relationships of the [windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) object.|
|[Create windowsInformationProtectionNetworkLearningSummary](../api/intune-wip-windowsinformationprotectionnetworklearningsummary-create.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md)|Create a new [windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) object.|
|[Delete windowsInformationProtectionNetworkLearningSummary](../api/intune-wip-windowsinformationprotectionnetworklearningsummary-delete.md)|None|Deletes a [windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md).|
|[Update windowsInformationProtectionNetworkLearningSummary](../api/intune-wip-windowsinformationprotectionnetworklearningsummary-update.md)|[windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md)|Update the properties of a [windowsInformationProtectionNetworkLearningSummary](../resources/intune-wip-windowsinformationprotectionnetworklearningsummary.md) object.|

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




