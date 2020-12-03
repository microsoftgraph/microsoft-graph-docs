---
title: "participant resource type"
description: "The participant type."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# participant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a participant in a call.

## Methods

| Method                                                 | Return Type                                                 | Description                                    |
|:-------------------------------------------------------|:------------------------------------------------------------|:-----------------------------------------------|
| [List participant](../api/participant-get.md)         | [participant](participant.md)                               | Retrieve a list of **participant** objects in the call. |
| [Get participant](../api/participant-get.md)           | [participant](participant.md)                               | Read properties of the **participant** object. |
| [Delete participant](../api/participant-delete.md)     | None   | Delete a participant in a call.                  |
| [ConfigureMixer](../api/participant-configuremixer.md) | [commsOperation](commsoperation.md)                         | Configure the participant audio mixer.         |
| [Invite](../api/participant-invite.md)                 | [inviteParticipantsOperation](../resources/inviteparticipantsoperation.md)                         | Invite a participant to the call.              |
| [Mute participant](../api/participant-mute.md)         | [muteParticipantOperation](muteparticipantoperation.md)     | Mute a participant in a call.                  |
| [Mute all participants](../api/participant-muteall.md) | [commsOperation](commsoperation.md) | Mute all the participants in the meeting.      |

## Properties

| Property             | Type                                     | Description                                                  |
| :------------------- | :--------------------------------------- | :------------------------------------------------------------|
| id                   | String                                   | The participant ID.                                          |
| info                 | [participantInfo](participantinfo.md)    | The participant of the participant.                          |
| isInLobby            | Boolean                                  | `true` if the participant is in lobby.                          |
| isMuted              | Boolean                                  | `true` if the participant is muted (client or server muted).    |
| mediaStreams         | [mediaStream](mediastream.md) collection | The list of media streams.                                   |
| metadata             | String                                   | A blob of data provided by the participant in the roster.     |
| recordingInfo        | [recordingInfo](recordinginfo.md)        | Information on whether the participant has recording capability. |

## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.participant"
}-->
```json
{
  "id": "String (identifier)",
  "info": {"@odata.type": "#microsoft.graph.participantInfo"},
  "isInLobby": true,
  "isMuted": true,
  "mediaStreams": [ { "@odata.type": "#microsoft.graph.mediaStream" } ],
  "metadata": "String",
  "recordingInfo": { "@odata.type": "#microsoft.graph.recordingInfo" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


