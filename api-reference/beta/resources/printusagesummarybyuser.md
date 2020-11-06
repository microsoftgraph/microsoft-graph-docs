---
title: printUsageSummaryByUser resource type
description: Describes print activity for a user during a specified time period (usageDate).
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printUsageSummaryByUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes print activity for a user during a specified time period (usageDate).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (daily)](../api/reportroot-list-dailyprintusagesummariesbyuser.md) | [printUsageSummaryByUser](printusagesummarybyuser.md) | Get a list of daily print usage summaries, grouped by user. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagesummariesbyuser.md) | [printUsageSummaryByUser](printusagesummarybyuser.md) | Get a list of monthly print usage summaries, grouped by user. |
| [Get](../api/printusagesummarybyuser-get.md) | [printUsageSummaryByUser](printusagesummarybyuser.md) | Read properties and relationships of a printUsageSummaryByUser object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The ID of this usage summary.|
|userPrincipalName|String|The UPN of the user represented by these statistics.|
|usageDate|Date|The date associated with these statistics.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed on behalf of the user on the associated date.|
|completedColorJobCount|Int64|The number of color print jobs completed on behalf of the user on the associated date.|
|incompleteJobCount|Int64|The number of print jobs that were queued on behalf of the user, but not completed, on the associated date.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUsageSummaryByUser"
}-->

```json
{
    "id": "String (identifier)",
    "userPrincipalName": "String (identifier)",
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
  "description": "printUsageSummaryByUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

