---
title: "meetingParticipants resource type"
description: "Participants in a meeting."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# meetingParticipants resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Participants in a meeting.

## Properties

| Property       | Type    | Description|
|:---------------|:--------|:----------|
| attendees | [meetingParticipantInfo](meetingparticipantinfo.md) collection |  |
| organizer | [meetingParticipantInfo](meetingparticipantinfo.md) |  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingParticipants"
}-->
```json
{
  "attendees": [{"@odata.type": "#microsoft.graph.meetingParticipantInfo"}],
  "organizer": {"@odata.type": "#microsoft.graph.meetingParticipantInfo"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "meetingParticipants resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/meetingparticipants.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
