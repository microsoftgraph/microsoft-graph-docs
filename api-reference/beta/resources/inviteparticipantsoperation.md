--- 
title: "InviteParticipantsOperation resource type"
description: "Represents the status of a long-running participant invitation operation, triggered by a call to the participant-invite API."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# InviteParticipantsOperation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | The client context.                                                                                                                               |
| createdDateTime                | DateTimeOffset              | The time when the recording was created.                                                                                                          |
| id                             | String                      | The server operation id. Read-only. Server generated.                                                                                             |
| lastActionDateTime             | DateTimeOffset              | The time of the last action of the operation.                                                                                                     |
| participants | [invitationParticipantInfo](invitationParticipantInfo.md) collection | The participants to invite. |
| resultInfo                     | [resultInfo](resultinfo.md) | The result information.  Read-only. Server generated.                                                                                             |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only. Server generated.                                                 |

## Relationships
None

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
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
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
