---
title: "participant resource type"
description: "The participant type."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# participant resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The participant type.

## Methods

| Method                                                          | Return Type                              | Description                                       |
|:----------------------------------------------------------------|:-----------------------------------------|:--------------------------------------------------|
| [Get participant](../api/participant-get.md)                    | [participant](participant.md)            | Read properties of the **participant** object.    |
| [ConfigureMixer](../api/participant-configuremixer.md)          | [commsOperation](commsoperation.md)      | Configure the participant audio mixer.            |
| [Invite](../api/participant-invite.md)                          | [commsOperation](commsoperation.md)      | Invite a participant to the call.                 |
| [Mute participant](../api/participant-mute.md)                  | [commsOperation](commsoperation.md)      | Mute a participant in a call.                     |
| [Mute all participants](../api/participant-muteall.md)          | [commsOperation](commsoperation.md)      | Mute all the participants in the meeting.         |

## Properties

| Property             | Type                                     | Description                                                  |
| :------------------- | :--------------------------------------- | :------------------------------------------------------------|
| id                   | String                                   | The participant id.                                          |
| info                 | [participantInfo](participantinfo.md)    | The participant of the participant.                          |
| isInLobby            | boolean                                  | true if the participant is in lobby                          |
| isMuted              | boolean                                  | true if the participant is muted (client or server muted)    |
| mediaStreams         | [mediaStream](mediastream.md) collection | The list of media streams.                                   |
| metadata             | String                                   | A blob of data provided by the participant in the roster     |
| recordingInfo        | [recordingInfo](recordinginfo.md)        | Information on whether the participant has recording capability. |

## Relationships
None

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

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.participant"
}-->
```json
{
  "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
  "info": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "en-US",
    "region": "westus"
  },
  "isInLobby": false,
  "isMuted": false,
  "mediaStreams": [
    {
      "sourceId": "1",
      "direction": "sendReceive",
      "label": "main-audio",
      "mediaType": "audio",
      "serverMuted": false
    }
  ],
  "metadata": "metadata-value",
  "recordingInfo": {
    "status": "recordingCapable"
  }
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
  "suppressions": [
    "Error: /api-reference/beta/resources/participant.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
