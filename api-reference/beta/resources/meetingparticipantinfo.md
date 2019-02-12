---
title: "meetingParticipantInfo resource type"
description: "Information about a participant in a meeting."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# meetingParticipantInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about a participant in a meeting.

## Properties

| Property       | Type                          | Description                              |
|:---------------|:------------------------------|:-----------------------------------------|
| identity       | [identitySet](identityset.md) | Identity information of the participant. |
| upn            | String                        | User principal name of the participant.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipantInfo"
}-->
```json
{
  "identity": {"@odata.type": "#microsoft.graph.identitySet"},
  "upn": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/meetingparticipantinfo.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
