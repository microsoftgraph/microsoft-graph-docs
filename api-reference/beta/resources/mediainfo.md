---
title: "mediaInfo resource type"
description: "The media information used in actions for prompts."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# mediaInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The media information used in actions for prompts.

## Properties
| Property	     | Type	   | Description                      |
|:---------------|:--------|:---------------------------------|
| resourceId     | String  | Unique identity of the resource. |
| uri            | String  | Path to the resource.            |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mediaInfo"
}-->
```json
{
  "resourceId": "String",
  "uri": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mediaInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/mediainfo.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
