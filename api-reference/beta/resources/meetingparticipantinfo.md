---
title: "meetingParticipantInfo resource type"
description: "Information about a participant in a meeting."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# meetingParticipantInfo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
<!-- {
  "type": "#page.annotation",
  "description": "meetingParticipantInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
