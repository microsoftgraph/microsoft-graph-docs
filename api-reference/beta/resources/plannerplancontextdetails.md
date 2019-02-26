---
title: "plannerPlanContextDetails resource type"
description: "The **plannerPlanContextDetails** resource contains additional information about a plannerPlanContext."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
---

# plannerPlanContextDetails resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerPlanContextDetails** resource contains additional information about a [plannerPlanContext](plannerplancontext.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|url|String|URL of the user experience represented by the associated [plannerPlanContext](plannerplancontext.md). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContextDetails"
}-->

```json
{
  "url": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanContextDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/plannerplancontextdetails.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
