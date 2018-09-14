# Participant resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The participant type.

## Methods

| Method                                                          | Return Type                              | Description                                       |
|:----------------------------------------------------------------|:-----------------------------------------|:--------------------------------------------------|
| [Get participant](../api/participant_get.md)                    | [participant](./participant.md)          | Read properties of the **participant** object.    |
| [ConfigureMixer](../api/participant_configureMixer.md)          | None                                     |                                                   |
| [Invite](../api/participant_invite.md)                          | None                                     |                                                   |
| [Mute participant](../api/participant_mute.md)                  | Operation location header                | Mute participant in a call.                       |
| [MuteAll](../api/participant_muteAll.md)                        | [commsOperation](commsOperation.md)      |                                                   |
| [Subscribe video](../api/participant_subscribeVideo.md)         | Operation location header                | Subscribe to video of a participant in a call.    |

## Properties

| Property             | Type                                     | Description                                                  |
| :------------------- | :--------------------------------------- | :------------------------------------------------------------|
| id                   | String                                   | The participant id.                                          |
| info                 | [identitySet](identitySet.md)            | The participant to add to the call.                          |
| isInLobby            | boolean                                  | true if the participant is in lobby                          |
| isMuted              | boolean                                  | true if the participant is muted (client or server muted)    |
| mediaStreams         | [mediaStream](mediaStream.md) collection | The list of media streams.                                   |
| metadata             | String                                   | A blob of data provided by the participant in the roster     |
| recordingInfo        | [recordingInfo](recordingInfo.md)        |                                                              |

## Relationships
None

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.participant"
}-->

```json
{
  "id": "String (identifier)",
  "info": {"@odata.type": "microsoft.graph.participantInfo"},
  "isMuted": true,
  "isTyping": true,
  "mediaStreams": [{"@odata.type": "microsoft.graph.mediaStream"}],
  "metadata": "String",
  "role": "String",
  "isInLobby": false,
}
```

## Example

``` json
{
    "@odata.type": "#microsoft.graph.participant",
    "recordingInfo": {"@odata.type": "microsoft.graph.recordingInfo"}
    "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
    "info": {
        "@odata.type": "#microsoft.graph.participantInfo",
        "identity": {
          "user": {
            "id": "29362BD4-CD58-4ED0-A206-0E4A33DBB0B6",
            "displayName": "Heidi Steen"
          }
        }
    },
    "metadata": "{
        "eventName": "RecordingStarted",
        "initiatorUserId": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698",
        "timestamp": "2018-02-22T16:02:33Z"
    }",
    "mediaStreams": [
        {
            "mediaType": "audio",
            "label": "main-audio",
            "sourceId": 1,
            "direction": "sendReceive",
        },
        {
            "mediaType": "video",
            "label": "main-video",
            "sourceId": 2,
            "direction": "sendReceive"
        }
    ],
    "isMuted": false,
    "isTyping": false,
    "role": "attendee",
    "isInLobby": false,
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "participant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
