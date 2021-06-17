---
title: printUsageByPrinter resource type
description: Describes print activity for a printer during a specified time period (usageDate).
author: braedenp-msft
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsageByPrinter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes print activity for a printer during a specified time period (usageDate).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (daily)](../api/reportroot-list-dailyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of daily print usage summaries, grouped by printer. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of monthly print usage summaries, grouped by printer. |
| [Get](../api/printUsageByPrinter-get.md) | [printUsageByPrinter](printUsageByPrinter.md) | Read the properties and relationships of a **printUsageByPrinter** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
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
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUsageByPrinter"
}-->

```json
{
    "id": "String (identifier)",
    "printerId": "String (identifier)",
    "usageDate": "String (timestamp)",
    "completedBlackAndWhiteJobCount": 123456,
    "completedColorJobCount": 123456,
    "incompleteJobCount": 123456
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printUsageByPrinter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

