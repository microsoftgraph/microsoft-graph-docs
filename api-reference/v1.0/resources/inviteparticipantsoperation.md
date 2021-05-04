--- 
title: "inviteParticipantsOperation resource type"
description: "Represents the status of a long-running participant invitation operation, triggered by a call to the participant-invite API."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# inviteParticipantsOperation resource type

Namespace: microsoft.graph

Represents the status of a long-running participant invitation operation, triggered by a call to the participant-invite API.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | The client context.                                                                                                                               |
| id                             | String                      | The server operation id. Read-only.                                                                                              |
| participants | [invitationParticipantInfo](invitationParticipantInfo.md) collection | The participants to invite. |
| resultInfo                     | [resultInfo](resultinfo.md) | The result information.  Read-only.                                                                                             |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.                                                  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inviteParticipantsOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "participants": [{"@odata.type": "#microsoft.graph.invitationParticipantInfo"}],
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "notStarted | running | completed | failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inviteParticipantsOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->

