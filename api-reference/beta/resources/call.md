# call resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **call** resource is created when there is an incoming call for the application or the application creates a new outgoing call via a `POST` on `app/calls`.

Calls can be set up as a peer-to-peer or as a multiparty call. For creating or joining a multiparty call, supply the `chatInfo` and `meetingInfo`. If these are not supplied, a new ad hoc meeting is created automatically. For an incoming call, record these values in a highly available store, so that your application to rejoin the call in the event your application crashes.

Although the same identity cannot be invited multiple times, it is possible for an application to join the same meeting multiple times. Each time the application joins, a distinct call `id` is provided for that call to the meeting. We recommend that you use separate identities to join the meeting in order for the clients to display them as different participants.

## Methods

| Method                                                            | Return Type                                       | Description                                  |
|:------------------------------------------------------------------|:--------------------------------------------------|:---------------------------------------------|
| [Get call](../api/call_get.md)                                    | [call](call.md)                                   | Read properties of the **call** object.      |
| [Delete](../api/call_delete.md)                                   |                                                   | Delete or Hang-up an active **call**.        |
| **Call Handling**                                                 |                                                   |                                              |
| [Answer](../api/call_answer.md)                                   |                                                   | Answer an incoming call.                     |
| [Reject](../api/call_reject.md)                                   |                                                   | Reject an incoming call.                     |
| [Redirect](../api/call_redirect.md)                               |                                                   | Redirect an incoming call.                   |
| [Transfer](../api/call_transfer.md)                               |                                                   | Transfer a call                              |
| **Multi-party**                                                   |                                                   |                                              |
| [List participants](../api/call_list_participants.md)             | [participant](participant.md) collection          | Get a participant object collection.         |
| [Invite Participants](../api/participant_invite.md)               | [commsOperation](commsoperation.md)               | Invite participants to the active call.      |
| [Mute All Participants](../api/participant_muteall.md)            | [commsOperation](commsoperation.md)               | Mute all participants in the call.           |
| [Configure Audio Mixer](../api/participant_configuremixer.md)     | [commsOperation](commsoperation.md)               | Configure audio in multiparty conversation.  |
| [Create audioRoutingGroup](../api/call_post_audioroutinggroups.md)| [audioRoutingGroup](audioroutinggroup.md)         | Create a new audioRoutingGroup by posting to the audioRoutingGroups collection. |
| [List audioRoutingGroups](../api/call_list_audioroutinggroups.md) | [audioRoutingGroup](audioroutinggroup.md) collection|Get a audioRoutingGroup object collection.  |
| **Interactive-Voice-Response**                                    |                                                   |                                              |
| [PlayPrompt](../api/call_playprompt.md)                           | [commsOperation](commsoperation.md)               | Play prompt in the call.                     |
| [Record](../api/call_record.md)                                   | [recordOperation](recordoperation.md)             | Record the call.                             |
| [CancelMediaProcessing](../api/call_cancelmediaprocessing.md)     | [commsOperation](commsoperation.md)               | Cancel media processing.                     |
| [SubscribeToTone](../api/call_subscribetotone.md)                 | [commsOperation](commsoperation.md)               | Subscribe to DTMF tones.                     |
| **Self Participant Operations**                                   |                                                   |                                              |
| [Mute](../api/call_mute.md)                                       | [commsOperation](commsoperation.md)               | Mute self in the call.                       |
| [Unmute](../api/call_unmute.md)                                   | [commsOperation](commsoperation.md)               | Unmute self in the call.                     |
| [UpdateMetadata](../api/call_updatemetadata.md)                   | [commsOperation](commsoperation.md)               | Update metadata for self in roster.          |
| [ChangeScreenSharingRole](../api/call_changescreensharingrole.md) |                                                   | Start and stop sharing screen in the call                                             |

## Properties

| Property            | Type                                                                                                   | Description                                                                                                                                                                                         |
| :------------------ | :------------------------------------------------------------------------------------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activeModalities    | String Collection                                                                                      | The list of active modalities. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`. Read-only. Server generated.                                                    |
| answeredBy          | [participantInfo](participantinfo.md)                                                                  | The participant that answered the call. Read-only. Server generated.                                                                                                                                |
| callRoutes          | [callRoute](callroute.md) collection                                                                   | The routing information on how the call was retargeted. Read-only. Server generated.                                                                                                                |
| callbackUri         | String                                                                                                 | The callback or subscription ID on which callbacks will be delivered.                                                                                                                               |
| chatInfo            | [chatInfo](chatinfo.md)                                                                                | The chat information.                                                                                                                                                                               |
| direction           | String                                                                                                 | The direction of the call. The possible value are `incoming` or `outgoing`. Read-only. Server generated.                                                                                            |
| id                  | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| mediaConfig         | [appHostedMediaConfig](apphostedmediaconfig.md) or [serviceHostedMediaConfig](servicehostedmediaconfig.md) | The media configuration.                                                                                                                                                                        |
| meetingCapability   | [meetingCapability](meetingcapability.md)                                                              | Contains the capabilities of a meeting.                                                                                                                                                             |
| meetingInfo         | [organizerMeetingInfo](organizermeetinginfo.md) or [tokenMeetingInfo](tokenmeetinginfo.md)             | The meeting information.                                                                                                                                                                            |
| myParticipantId     | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| requestedModalities | String collection                                                                                      | The list of requested modalities. | Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`.                                                                            |
| resultInfo          | [resultInfo](resultinfo.md)                                                                            | The result information. For example can hold termination reason. Read-only. Server generated.                                                                                                       |
| ringingTimeoutInSeconds | Int32                                                                                              | Ringing timeout for outgoing peer to peer calls                                                                                                                                                     |
| routingPolicies     | String collection                                                                                      | Possible values are: `none`, `noMissedCall`, `disableForwardingExceptPhone`, `disableForwarding`.                                                                                                   |
| source              | [participantInfo](participantinfo.md)                                                                  | The originator of the call.                                                                                                                                                                         |
| state               | String                                                                                                 | The call state. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transferAccepted`, `redirecting`, `terminating`, `terminated`. Read-only. Server generated.                         |
| subject             | String                                                                                                 | The subject of the conversation.                                                                                                                                                                    |
| targets             | [participantInfo](participantinfo.md) collection                                                       | The targets of the call.                                                                                                                                                                            |
| tenantId            | String                                                                                                 | tenantId in Azure Active Directory.                                                                                                                                                                 |
| terminationReason   | String                                                                                                 | Read-only. Server generated.                                                                                                                                                                        |
| toneInfo            | [toneInfo](toneinfo.md)                                                                                | Read-only. Server generated.                                                                                                                                                                        |

> Note: Properties marked as `Server generated` are ignored when processing `POST` on `app/calls`.

## Relationships

| Relationship        | Type                                                 | Description                                                         |
|:--------------------|:-----------------------------------------------------|:--------------------------------------------------------------------|
| audioRoutingGroups  | [audioRoutingGroup](audioroutinggroup.md) collection | Read-only. Nullable.                                                |
| operations          | [commsOperation](commsoperation.md) collection       | Read-only. Nullable.                                                |
| participants        | [participant](participant.md) collection             | Read-only. Nullable.                                                |

## JSON representation

The following is a JSON representation of the resource.

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
  "state": "incoming | establishing | ringing | established | hold | transferring | transferAccepted | redirecting | terminating | terminated",
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
