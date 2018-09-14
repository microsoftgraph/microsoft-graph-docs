# Call resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The call resource type. This resource is created when there is an incoming call for the application or application create a new outgoing call by `POST` on `app/calls`

## Methods

| Method                                                            | Return Type                                       | Description                                  |
|:------------------------------------------------------------------|:--------------------------------------------------|:---------------------------------------------|
| [Get call](../api/call_get.md)                                    | [call](call.md)                                   | Read properties of the **call** object.      |
| [Delete](../api/call_delete.md)                                   | None                                              | Delete or Hang-up an active **call**.        |
| **Call Handling**                                                 |                                                   |                                              |
| [Answer](../api/call_answer.md)                                   | [commsOperation](commsOperation.md)               | Answer an incoming call.                     |
| [Reject](../api/call_reject.md)                                   | [commsOperation](commsOperation.md)               | Reject an incoming call.                     |
| [Redirect](../api/call_redirect.md)                               | [commsOperation](commsOperation.md)               | Redirect an incoming call.                   |
| [Hangup](../api/call_delete.md) $TODO - billbl - THIS IS A DUPE                                  | [commsOperation](commsOperation.md)               | Delete or Hang-up an active call.            |
| **Peer-to-peer**                                                  |                                                   |                                              |
| [Transfer](../api/call_transfer.md)                               | [commsOperation](commsOperation.md)               | Transfer an active call.                     |
| **Multi-party**                                                   |                                                   |                                              |
| [List participants](../api/call_list_participants.md)             | [participant](participant.md) collection          | Get a **participant** object collection.     |
| [Invite Participants](../api/participant_invite.md)               | [commsOperation](commsOperation.md)               | Invite participants to the active call.      |
| [Mute All Participants](../api/participants_mute.md)              | [commsOperation](commsOperation.md)               | Mute all participants in the call.           |
| **Interactive-Voice-Response**                                    |                                                   |                                              |
| [Play Prompt](../api/call_playPrompt.md)                          | [commsOperation](commsOperation.md)               | Play prompt in the call.                     |
| [Record](../api/call_record.md)                                   | [recordOperation](recordOperation.md)             | Record the call.                             |
| [Cancel Media Processing](../api/call_cancelMediaProcessing.md)   | [commsOperation](commsOperation.md)               | Cancel media processing.                     |
| [SubscribeToTone](../api/call_subscribeToTone.md)                 | [commsOperation](commsOperation.md)               | Subscribe to DTMF tones.                     |
| [Configure Audio Mixer](../api/participant_configureMixer.md)     | [commsOperation](commsOperation.md)               | Configure audio in multiparty conversation.  |
| [Create audioRoutingGroup](../api/call_post_audioRoutingGroups.md)| [audioRoutingGroup](audioRoutingGroup.md) | Create a new audioRoutingGroup by posting to the audioRoutingGroups collection. |
| [List audioRoutingGroups](../api/call_list_audioRoutingGroups.md) | [audioRoutingGroup](audioRoutingGroup.md) collection|Get a audioRoutingGroup object collection. |
| **Self Participant Operations**                                   |                                                   |                                              |
| [Unmute](../api/call_unmute.md)                                   | [commsOperation](commsOperation.md)               | Unmute self in the call.                     |
| [UpdateMetadata](../api/call_updateMetadata.md)                   | [commsOperation](commsOperation.md)               | Update metadata for self in roster.          |
| [ChangeScreenSharingRole](../api/call_changeScreenSharingRole.md) | [commsOperation](commsOperation.md)               |                                              |


## Properties

| Property            | Type                                                                                                   | Description                                                                                                                                                                                         |
| :------------------ | :------------------------------------------------------------------------------------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activeModalities    | String Collection                                                                                      | The list of active modalities. Possible values are: `unknown`, `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`. Read Only.                                                     |
| answeredBy          | [identitySet](identitySet.md)                                                                          | The participant that answered the call. Read Only.                                                                                                                                                  |
| callRoutes          | [callRoute](callRoute.md) collection                                                                   | The routing information on how the call was retargeted.                                                                                                                                             |
| callbackUri         | String                                                                                                 | The callback or subscription ID on which callbacks will be delivered.                                                                                                                               |
| chatInfo            | [chatInfo](chatInfo.md)                                                                                | The chat information.                                                                                                                                                                               |
| direction           | String                                                                                                 | The direction of the call. The possible value are `incoming` or `outgoing`. Read Only.                                                                                                              |
| id                  | String                                                                                                 |                                                                                                                                                                                                     |
| mediaConfig         | [ApplicationMediaConfig](apphostedMediaConfig.md) or [ServiceMediaConfig](serviceHostedMediaConfig.md) | The media configuration.                                                                                                                                                                            |
| meetingCapability   | [meetingCapability](meetingCapability.md)                                                              |                                                                                                                                                                                                     |
| meetingInfo         | [organizerMeetingInfo](organizerMeetingInfo.md) or [tokenMeetingInfo](tokenMeetingInfo.md)             | The meeting information.                                                                                                                                                                            |
| myParticipantId     | String                                                                                                 |                                                                                                                                                                                                     |                                                                                             
| requestedModalities | String Collection                                                                                      | The list of requested modalities. The possible value are `audio`, `video`, `screenSharing` or `data`.                                                                                               |
| resultInfo          | [resultInfo](resultInfo.md)                                                                            | The result information. For example can hold termination reason.                                                                                                                                    |
| ringingTimeoutInSeconds | Int32 |  |
| routingPolicies | String collection | Possible values are: `none`, `disableForwardingAndVoicemail`. |
| source              | [identitySet](identitySet.md)                                                                          | The originator of the call.                                                                                                                                                                         |
| state               | String                                                                                                 | The call state. Possible value: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transfer-accepted`, `redirecting`, `terminating`, `terminated`. Read Only.           |
| subject             | String                                                                                                 | The subject of the conversation.                                                                                                                                                                    |
| targetDisposition   | String                                                                                                 | The call handling disposition for the target. The possible values are: `default`, `simultaneousRing`, `forward`.                                                                                    |
| targets             | [identitySet](identitySet.md) collection                                                               | The targets of the call.                                                                                                                                                                            |
| tenantId | String |  |
| terminationReason | String |  |
| toneInfo | [toneInfo](toneInfo.md) |  |

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

  ],
  "@odata.type": "microsoft.graph.call"
}-->

```json
{
  "activeModalities": ["String"],
  "answeredBy": {"@odata.type": "microsoft.graph.participantInfo"},
  "callRoutes": [{"@odata.type": "microsoft.graph.callRoute"}],
  "callbackUri": "String",
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "direction": "String",
  "id": "String (identifier)",
  "mediaConfig": {"@odata.type": "microsoft.graph.mediaConfig"},
  "meetingCapability": {"@odata.type": "microsoft.graph.meetingCapability"},
  "meetingInfo": {"@odata.type": "microsoft.graph.meetingInfo"},
  "myParticipantId": "String",
  "requestedModalities": ["String"],
  "resultInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "ringingTimeoutInSeconds": 1024,
  "routingPolicies": ["String"],
  "source": {"@odata.type": "microsoft.graph.participantInfo"},
  "state": "String",
  "subject": "String",
  "targetDisposition": "String",
  "targets": [{"@odata.type": "microsoft.graph.participantInfo"}],
  "tenantId": "String",
  "terminationReason": "String",
  "toneInfo": {"@odata.type": "microsoft.graph.toneInfo"}
}
```

## Example

``` json
{
    "state": "established",
    "direction": "outgoing",
    "subject": "Test Call",
    "source" : {
        "@odata.type": "#microsoft.graph.participantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "application" : {
                "@odata.type": "#microsoft.graph.endpointIdentity",
                "displayName": "Test BOT",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        }
    },
    "targets" : [{
        "@odata.type": "#microsoft.graph.participantInfo",
        "identity" : {
            "@odata.type": "#microsoft.graph.identitySet",
            "user": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
            }
        }
    }],
    "answeredBy" : {
        "@odata.type": "#microsoft.graph.identitySet",
        "user": {
            "@odata.type": "#microsoft.graph.endpointIdentity",
            "displayName": "Test User",
            "language": "en-US",
            "id": "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698"
        }
    },
    "requestedModalities": ["audio", "video"],
    "activeModalities": ["audio"],
    "mediaConfig": {
        "@odata.type": "#microsoft.graph.serviceMediaConfig",
        "preFetchMedia": [
            {
                "url": "https://cdn.contoso.com/beep.wav",
                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E",
            },
            {
                "url": "https://cdn.contoso.com/cool.wav",
                "id": "1D6DE2D4-CD51-4309-8DAA-70768651088F",
            }
        ]
    },
    "chatInfo": {
        "@odata.type": "#microsoft.graph.chatInfo",
        "threadId": "90ED37DC-D8E3-4E11-9DE3-30A955DDA06F",
        "messageId": "0",
    },
    "callbackUri": "2887CEE8344B47C291F1AF628599A93C"
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
