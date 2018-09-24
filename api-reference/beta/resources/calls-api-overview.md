# Working with the calls and online meetings in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph calls and online meetings APIs add a new dimension to how your apps and services can interact with users by enabling voice and video features.  The Calls APIs enable you to create calls and receive calls from users and applications in Microsoft Teams.  These APIs allow developers to build a service application (bot) that can act as a participant in a call or meeting.

## Call Types

Calls are categorized as peer-to-peer or multi-party calls. A user may initiate a peer-to-peer call with your bot or invite your bot into an existing multi-party conference. No permissions are necessary when the user is inviting the bot to a peer-to-peer call. For your bot to participate in a multi-party call, the bot needs to have permission from the tenant administrator to join a group call.

![Call Types](../../../concepts/images/call-types.png)

If your bot is creating the call, your bot needs to have either the initiate or the initiate-group-call permission. Your bot has the option to create a peer-to-peer call or a multi-party call. 
* For a peer-to-peer call, the bot needs to specify only one target and no meeting coordinates. 
* If your bot initiates a call with multiple participants, an ad hoc meeting is setup behind the scenes and everyone joins that conference. If meeting coordinates are specified, a multi-party call is setup even if there is only one target.

A call may start as peer-to-peer and escalate to multi-party. A conference is provisioned automatically and the media is retargeted to the conference. Your bot may initiate escalation by inviting others provided your bot has the initiate-group-call permission. If escalation is initiated by another participant and the bot does not have join-group-call permission, your bot is dropped from the call.

> **Beta Limitation:** When a call is escalated from peer-to-peer to multi-party, not all multi-party features are available. Specifically, the bot will not receive roster updates.

## Signaling

#### Incoming Call

To receive an incoming call, you need to [register the calling bot](../../../concepts/register-calling-bot.md). When the bot receives the incoming notification, it has these options:

| Method                              | Description                                  |
|:------------------------------------|:---------------------------------------------|
| [Answer](../api/call_answer.md)     | Answer the incoming call.                    |
| [Reject](../api/call_reject.md)     | Reject and hangup the call.                  |
| [Redirect](../api/call_redirect.md) | Redirect the call.                           |

The bot can redirect the call to another user or a bot. The bot can also redirect it to a user's voicemail.

![Call Handling](../../../concepts/images/call-handling.png)

> **Beta Limitation:** Redirecting or making outbound calls to PSTN is currently not supported.

#### In-Call

Operations for the bot are available on the call object. These affect the bot as the participant in the call.

| Method                                                            | Description                                  |
|:------------------------------------------------------------------|:---------------------------------------------|
| [Mute](../api/call_mute.md)                                       | Mute self in the call.                       |
| [Unmute](../api/call_unmute.md)                                   | Unmute self in the call.                     |
| [UpdateMetadata](../api/call_updatemetadata.md)                   | Update metadata for self in roster.          |
| [ChangeScreenSharingRole](../api/call_changescreensharingrole.md) | Start and stop sharing screen in the call.   |

To interact with other participants on the call, use the participants object.

| Method                                                            | Description                                  |
|:------------------------------------------------------------------|:---------------------------------------------|
| [List participants](../api/call_list_participants.md)             | Get a participant object collection.         |
| [Invite Participants](../api/participant_invite.md)               | Invite participants to the active call.      |
| [Mute All Participants](../api/participant_muteall.md)            | Mute all participants in the call.           |

## Media

Media processing is managed through the Microsoft Real-time Media Platform. The Real-time Media Platform helps bots engage in Teams audio/video calls and meetings.  It allows real-time bots to participate in both peer-to-peer and multi-party calls​.

When the bot answers an incoming call, or joins a new or existing call, it needs to tell the Real-time Media Platform how media will be handled. If you are building an Interactive Voice Response (IVR) system, you may offload the expensive audio processing to Microsoft service hosted media components. If your bot requires direct access to media streams, we offer an application hosted media option through the Real-time Media SDK.

#### Service Hosted Media

Bots can manage the workflow and offload audio processing to the Microsoft Real-time Media Platform. With Service-hosted Media, you have serveral options to implement and host your bot. Consider using one of the available [SDKs](https://developer.microsoft.com/en-us/graph/code-samples-and-sdks). A Service-hosted Media bot is can be implemented as a _Stateless_service as it does not process media locally.

| Method                                                        | Description                                             |
|:--------------------------------------------------------------|:--------------------------------------------------------|
| [PlayPrompt](../api/call_playprompt.md)                       | Play an audio clip to the user.                         |
| [Record](../api/call_record.md)                               | Optionally play a prompt and record an audio clip.      |
| [SubscribeToTone](../api/call_subscribetotone.md)             | Subscribe to DTMF tones from the user.                  |
| [CancelMediaProcessing](../api/call_cancelmediaprocessing.md) | Cancel any media processing already queued.             |

#### Application Hosted Media

For the bot to get direct access to the media, the bot needs the Access-Media permission. The Real-time Media library and the stateful SDK helps you build rich real-time media calling bots. An Application-hosted bot must be hosted in a Windows environment. [Application hosted media samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples) show how to build the bot in various Azure Platforms (including Cloud Services and Service Fabric).

[Graph Calling SDK](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/index.html) is provided to simplify the creation of bots. The SDK provides functionality to manage the states of the resources in memory and to pull in bot developers' media stack.

The Media SDK allows the bot to send and receive audio, video, and video-based screen sharing content. Video-based screen sharing is modeled as a video channel. The bot may subscribe to the mixed audio channel and multiple video channels. For the video channel, the bot has a choice of sending and receiving video as an encoded H.264 stream or as decoded raw frames.

> **Note:** You may not use the Microsoft.Graph.Calls.Media API to record or otherwise persist media content from calls or meetings that your bot accesses.

## Samples

Samples are hosted in [microsoft-graph-comms-samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/samples) GitHub and you can get started by reading the [README](https://github.com/microsoftgraph/microsoft-graph-comms-samples/blob/master/README.md) file.

## Testing

Bots can be tested locally using tunneling services like [Ngrok](https://ngrok.com) following some setup. See [testing](../../../concepts/calling-testing.md) to learn more.

## Known Issues

1. Case mismatch in payloads

    Payloads returned in notifications and responses contain incorrect capitalization of odata.types.  They are returned in upper camel case instead of lower camel case.

2. Navigation path `/applications/{id}` not supported

    Navigating through the global applications node to the application, even your own, is not allowed.  Please use the `/app` navigation only.