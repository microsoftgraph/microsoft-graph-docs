---
title: "audioSourceLevel resource type"
description: "Level configuration for other sources."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# audioSourceLevel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Level configuration for other sources.

## Properties

| Property               | Type    | Description                                                                                         |
| :--------------------- | :------ | :---------------------------------------------------------------------------------------------------|
| duckOthers             | Boolean | Enables this source to duck other sources while active. If set to true, ducking level has to be set.|
| level                  | Int64   | Ducking level of the source if `duckOthers` is set to `true`.                                     |
| participant            | String  | The source participant audio stream.                                                                |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioSourceLevel"
}-->
```json
{
  "duckOthers": true,
  "level": 100,
  "participant": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "audioSourceLevel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/audiosourcelevel.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
