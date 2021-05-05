---
title: printUsageByUser resource type
description: Describes print activity for a user during a specified time period (usageDate).
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsageByUser resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Describes print activity for a user during a specified time period (usageDate).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List (daily)](../api/reportroot-list-dailyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of daily print usage summaries, grouped by user. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of monthly print usage summaries, grouped by user. |
| [Get](../api/printusagebyuser-get.md) | [printUsageByUser](printusagebyuser.md) | Read properties and relationships of a printUsageByUser object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printUsageByUser",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printUsageByUser",
  "id": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer",
  "userPrincipalName": "String"
}
```

