# Call resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The call resource is created when there is an incoming call for the application or application creates a new outgoing call by `POST` on `app/calls`.

Calls can be setup as a peer-to-peer or multi-party call. For creating or joining a multi-party call, supply the `chatInfo` and `meetingInfo`. If these are not supplied, a new ad hoc meeting is created automatically. For an incoming call, record these values in a highly available store in order for your application to rejoin the call in the event your application crashes.

Although the same identity cannot be invited multiple times, it is possible for an application to join the same meeting multiple times. Each time the application joins, a distinct call `id` is provided for that call to the meeting. It is recommended that you use separate identities to join the meeting in order for the clients to display them as different participants.

## Methods

| Method                                                            | Return Type                                       | Description                                  |
|:------------------------------------------------------------------|:--------------------------------------------------|:---------------------------------------------|
| [Get call](../api/call_get.md)                                    | [call](call.md)                                   | Read properties of the **call** object.      |
| [Delete](../api/call_delete.md)                                   |                                                   | Delete or Hang-up an active **call**.        |
| **Call Handling**                                                 |                                                   |                                              |
| [Answer](../api/call_answer.md)                                   |                                                   | Answer an incoming call.                     |
| [Reject](../api/call_reject.md)                                   |                                                   | Reject an incoming call.                     |
| [Redirect](../api/call_redirect.md)                               |                                                   | Redirect an incoming call.                   |
| [Transfer](../api/call_transfer.md)                               |                                                   |                                              |
| **Multi-party**                                                   |                                                   |                                              |
| [List participants](../api/call_list_participants.md)             | [participant](participant.md) collection          |Get a participant object collection.          |
| [Invite Participants](../api/participant_invite.md)               | [commsOperation](commsOperation.md)               | Invite participants to the active call.      |
| [Mute All Participants](../api/participant_muteAll.md)            | [commsOperation](commsOperation.md)               | Mute all participants in the call.           |
| [Configure Audio Mixer](../api/participant_configureMixer.md)     | [commsOperation](commsOperation.md)               | Configure audio in multiparty conversation.  |
| [Create audioRoutingGroup](../api/call_post_audioRoutingGroups.md)| [audioRoutingGroup](audioRoutingGroup.md)         | Create a new audioRoutingGroup by posting to the audioRoutingGroups collection. |
| [List audioRoutingGroups](../api/call_list_audioRoutingGroups.md) | [audioRoutingGroup](audioRoutingGroup.md) collection|Get a audioRoutingGroup object collection.  |
| **Interactive-Voice-Response**                                    |                                                   |                                              |
| [PlayPrompt](../api/call_playPrompt.md)                           | [commsOperation](commsOperation.md)               | Play prompt in the call.                     |
| [Record](../api/call_record.md)                                   | [recordOperation](recordOperation.md)             | Record the call.                             |
| [CancelMediaProcessing](../api/call_cancelMediaProcessing.md)     | [commsOperation](commsOperation.md)               | Cancel media processing.                     |
| [SubscribeToTone](../api/call_subscribeToTone.md)                 | [commsOperation](commsOperation.md)               | Subscribe to DTMF tones.                     |
| **Self Participant Operations**                                   |                                                   |                                              |
| [Mute](../api/call_mute.md)                                       | [commsOperation](commsOperation.md)               | Mute self in the call.                       |
| [Unmute](../api/call_unmute.md)                                   | [commsOperation](commsOperation.md)               | Unmute self in the call.                     |
| [UpdateMetadata](../api/call_updateMetadata.md)                   | [commsOperation](commsOperation.md)               | Update metadata for self in roster.          |
| [ChangeScreenSharingRole](../api/call_changeScreenSharingRole.md) |                                                   |                                              |

## Properties

| Property            | Type                                                                                                   | Description                                                                                                                                                                                         |
| :------------------ | :------------------------------------------------------------------------------------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activeModalities    | String Collection                                                                                      | The list of active modalities. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`. Read-only. Server generated.                                               |
| answeredBy          | [participantInfo](participantInfo.md)                                                                  | The participant that answered the call. Read-only. Server generated.                                                                                                                                |
| callRoutes          | [callRoute](callRoute.md) collection                                                                   | The routing information on how the call was retargeted. Read-only. Server generated.                                                                                                                |
| callbackUri         | String                                                                                                 | The callback or subscription ID on which callbacks will be delivered.                                                                                                                               |
| chatInfo            | [chatInfo](chatInfo.md)                                                                                | The chat information.                                                                                                                                                                               |
| direction           | String                                                                                                 | The direction of the call. The possible value are `incoming` or `outgoing`. Read-only. Server generated.                                                                                          |
| id                  | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| mediaConfig         | [appHostedMediaConfig](appHostedMediaConfig.md) or [serviceHostedMediaConfig](serviceHostedMediaConfig.md) | The media configuration.                                                                                                                                                                        |
| meetingCapability   | [meetingCapability](meetingCapability.md)                                                              |                                                                                                                                                                                                     |
| meetingInfo         | [organizerMeetingInfo](organizerMeetingInfo.md) or [tokenMeetingInfo](tokenMeetingInfo.md)             | The meeting information.                                                                                                                                                                            |
| myParticipantId     | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| requestedModalities | String collection                                                                                      | The list of requested modalities. | Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`.                                                                       |
| resultInfo          | [resultInfo](resultInfo.md)                                                                            | The result information. For example can hold termination reason. Read-only. Server generated.                                                                                                       |
| ringingTimeoutInSeconds | Int32                                                                                              |                                                                                                                                                                                                     |
| routingPolicies     | String collection                                                                                      | Possible values are: `none`, `noMissedCall`, `disableForwardingExceptPhone`, `disableForwarding`.                                                                                             |
| source              | [participantInfo](participantInfo.md)                                                                  | The originator of the call.                                                                                                                                                                         |
| state               | String                                                                                                 | The call state. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `redirecting`, `terminating`, `terminated`. Read-only. Server generated.                 |
| subject             | String                                                                                                 | The subject of the conversation.                                                                                                                                                                    |
| targets             | [participantInfo](participantInfo.md) collection                                                       | The targets of the call.                                                                                                                                                                            |
| tenantId            | String                                                                                                 |                                                                                                                                                                                                     |
| terminationReason   | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| toneInfo            | [toneInfo](toneInfo.md)                                                                                | Read-only. Server generated.                                                                                                                                                                        |

> Note: Properties marked as `Server generated` are ignored when processing `POST` on `app/calls`.

## Relationships

| Relationship        | Type                                                 | Description                                                         |
|:--------------------|:-----------------------------------------------------|:--------------------------------------------------------------------|
| audioRoutingGroups  | [audioRoutingGroup](audioRoutingGroup.md) collection | Read-only. Nullable.                                                |
| operations          | [commsOperation](commsOperation.md) collection       | Read-only. Nullable.                                                |
| participants        | [participant](participant.md) collection             | Read-only. Nullable.                                                |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "activeModalities",
    "answeredBy",
    "callRoutes",
    "chatInfo",
    "direction",
    "id",
    "meetingCapability",
    "meetingInfo",
    "myParticipantId",
    "resultInfo",
    "ringingTimeoutInSeconds",
    "routingPolicies",
    "state",
    "targets",
    "tenantId",
    "terminationReason",
    "toneInfo"
  ],
  "@odata.type": "microsoft.graph.call"
}-->
```json
{
  "activeModalities": ["unknown | audio | video | videoBasedScreenSharing | data"],
  "answeredBy": {"@odata.type": "#microsoft.graph.participantInfo"},
  "callRoutes": [{"@odata.type": "#microsoft.graph.callRoute"}],
  "callbackUri": "String",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "direction": "incoming | outgoing",
  "id": "String (identifier)",
  "mediaConfig": {"@odata.type": "#microsoft.graph.mediaConfig"},
  "meetingCapability": {"@odata.type": "#microsoft.graph.meetingCapability"},
  "meetingInfo": {"@odata.type": "#microsoft.graph.meetingInfo"},
  "myParticipantId": "String",
  "requestedModalities": ["unknown | audio | video | videoBasedScreenSharing | data"],
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "ringingTimeoutInSeconds": 1024,
  "routingPolicies": ["none | noMissedCall | disableForwardingExceptPhone | disableForwarding"],
  "source": {"@odata.type": "#microsoft.graph.participantInfo"},
  "state": "incoming | establishing | ringing | established | hold | redirecting | terminating | terminated",
  "subject": "String",
  "targets": [{"@odata.type": "#microsoft.graph.participantInfo"}],
  "tenantId": "String",
  "terminationReason": "String",
  "toneInfo": {"@odata.type": "#microsoft.graph.toneInfo"}
}
```

> **Note:** You will find join URL from a meeting scheduled with Microsoft Teams. Here's how to extract the data from the URL and fill `chatInfo` and `meetingInfo`.

```http
https://teams.microsoft.com/l/meetup-join/19%3ameeting_NTg0NmQ3NTctZDVkZC00YzRhLThmNmEtOGQ3M2E0ODdmZDZk%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%224b444206-207c-42f8-92a6-e332b41c88a2%22%7d
decodes to:
https://teams.microsoft.com/l/meetup-join/19:meeting_NTg0NmQ3NTctZDVkZC00YzRhLThmNmEtOGQ3M2E0ODdmZDZk@thread.v2/0?context={"Tid":"72f988bf-86f1-41af-91ab-2d7cd011db47","Oid":"4b444206-207c-42f8-92a6-e332b41c88a2"}
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.call",
  truncated: true
}-->
```json
{
  "chatInfo": {
    "threadId": "19:meeting_NTg0NmQ3NTctZDVkZC00YzRhLThmNmEtOGQ3M2E0ODdmZDZk@thread.v2",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "meetingInfo": {
    "@odata.type": "#microsoft.graph.organizerMeetingInfo",
    "organizer": {
      "user": {
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "id": "4b444206-207c-42f8-92a6-e332b41c88a2"
      }
    }
  }
}
```

## Example

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.call"
}-->
```json
{
  "activeModalities": [
    "audio", "video"
  ],
  "answeredBy": {
    "identity": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "callRoutes": [
    {
      "final": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "original": {
        "phone": {
          "id": "+14258828080"
        }
      },
      "routingType": "forwarded"
    }
  ],
  "callbackUri": "callbackUri-value",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "direction": "incoming",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",
    "blob": "<media config blob>",
    "removeFromDefaultAudioGroup": false
  },
  "meetingCapability": {
    "allowAnonymousUsersToDialOut": true,
    "autoAdmittedUsers": "everyoneInCompany"
  },
  "meetingInfo": {
    "@odata.type": "#microsoft.graph.organizerMeetingInfo",
    "organizer": {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "displayName": "Heidi Steen"
      }
    },
    "allowConversationWithoutHost": true
  },
  "myParticipantId": "myParticipantId-value",
  "requestedModalities": [
    "unknown"
  ],
  "ringingTimeoutInSeconds": 99,
  "routingPolicies": [
    "none"
  ],
  "source": {
    "identity" : {
      "application" : {
        "@odata.type": "#microsoft.graph.identity",
        "displayName": "Test BOT",
        "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
      }
    },
    "languageId": "languageId-value",
    "region": "region-value"
  },
  "state": "incoming",
  "subject": "subject-value",
  "targets": [
    {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "languageId": "languageId-value",
      "region": "region-value"
    }
  ],
  "tenantId": "tenantId-value",
  "terminationReason": "terminationReason-value",
  "toneInfo": {
    "sequenceId": 99,
    "tone": "tone0"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
