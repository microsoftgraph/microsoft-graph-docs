---
title: printUsageByPrinter resource type
description: Describes print activity for a printer during a specified time period (usageDate).
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsageByPrinter resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Describes print activity for a printer during a specified time period (usageDate).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List (daily)](../api/reportroot-list-dailyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of daily print usage summaries, grouped by printer. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of monthly print usage summaries, grouped by printer. |
| [Get](../api/printUsageByPrinter-get.md) | [printUsageByPrinter](printUsageByPrinter.md) | Read the properties and relationships of a **printUsageByPrinter** object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of this usage summary.|
|printerID|String|The ID of the printer represented by these statistics.|
|usageDate|Date|The date associated with these statistics.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed by the printer on the associated date.|
|completedColorJobCount|Int64|The number of color print jobs completed by the printer on the associated date.|
|incompleteJobCount|Int64|The number of print jobs that were queued for the printer, but not completed, on the associated date.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printUsageByPrinter",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printUsageByPrinter",
  "id": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer",
  "printerId": "String"
}
```

