---
title: "audioConferencing resource type"
description: "Represents phone access information for an onlineMeeting."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# audioConferencing resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents phone access information for an [onlineMeeting](onlinemeeting.md).

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| dialinUrl           | String  | A URL to the externally-accessible web page that contains dial-in information. |
| leaderPasscode      | String  | The leader password required to connect to the Audio Conference Provider.      |
| participantPasscode | String  | The participant password required to connect to the Audio Conference Provider. |
| tollFreeNumber      | String  | The toll-free number to connect to the Audio Conference Provider.              |
| tollNumber          | String  | The toll number to connect to the Audio Conference Provider.                   |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioConferencing"
}-->
```json
{
  "dialinUrl": "String",
  "leaderPasscode": "String",
  "participantPasscode": "String",
  "tollFreeNumber": "String",
  "tollNumber": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "audioConferencing resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/audioconferencing.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
