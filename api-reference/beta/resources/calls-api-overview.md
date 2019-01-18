---
title: "Working with the calls and online meetings API in Microsoft Graph"
description: "The Microsoft Graph calls and online meetings API adds a new dimension to how your apps and services can interact with users by enabling voice and video features. The API enables you to create calls and receive calls from users and applications in Microsoft Teams. You can use these APIs to build a service application (bot) that can act as a participant in a call or meeting."
author: "VinodRavichandran"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# Working with the calls and online meetings API in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph calls and online meetings API adds a new dimension to how your apps and services can interact with users by enabling voice and video features. The API enables you to create calls and receive calls from users and applications in Microsoft Teams. You can use these APIs to build a service application (bot) that can act as a participant in a call or meeting.

## Call types

Calls are categorized as peer-to-peer or multiparty calls. A user can initiate a peer-to-peer call with your bot or invite your bot into an existing multiparty conference. No permissions are necessary when the user is inviting the bot to a peer-to-peer call. For your bot to participate in a multiparty call, the bot needs to have permission from the tenant administrator to join a group call.

![An image showing peer-to-peer and multiparty calls](https://cdn.graph.office.net/prod/GraphDocuments/en-us/concepts/images/call-types.png)

If your bot is creating the call, it needs to have either the initiate or the initiate-group-call permission. Your bot has the option to create a peer-to-peer call or a multiparty call.

- For a peer-to-peer call, the bot needs to specify only one target and no meeting coordinates. 
- If your bot initiates a call with multiple participants, an ad hoc meeting is set up behind the scenes and everyone joins that conference. If meeting coordinates are specified, a multiparty call is set up even if there is only one target.

A call might start as peer-to-peer and escalate to multiparty. A conference is provisioned automatically and the media is retargeted to the conference. Your bot can initiate escalation by inviting others, provided your bot has the initiate-group-call permission. If escalation is initiated by another participant and the bot does not have join-group-call permission, your bot is dropped from the call.

> **Important:** When a call is escalated from peer-to-peer to multiparty, not all multiparty features are available. Specifically, the bot will not receive roster updates.

## Signaling

### Incoming call

To receive an incoming call, you need to register the calling bot. When the bot receives the incoming notification, it has the following options.

| Method                              | Description                                  |
|:------------------------------------|:---------------------------------------------|
| [Answer](../api/call-answer.md)     | Answer the incoming call.                    |
| [Reject](../api/call-reject.md)     | Reject and hangup the call.                  |
| [Redirect](../api/call-redirect.md) | Redirect the call.                           |

The bot can redirect the call to another user or a bot. The bot can also redirect it to a user's voicemail.

![Image showing a bot redirecting a call to a voice mail](https://cdn.graph.office.net/prod/GraphDocuments/en-us/concepts/images/call-handling.png)

> **Important:** Redirecting or making outbound calls to PSTN is currently not supported.

### In-call

Operations for the bot are available on the call object. These affect the bot as the participant in the call.

| Method                                                            | Description                                  |
|:------------------------------------------------------------------|:---------------------------------------------|
| [Mute](../api/call-mute.md)                                       | Mute self in the call.                       |
| [Unmute](../api/call-unmute.md)                                   | Unmute self in the call.                     |
| [UpdateMetadata](../api/call-updatemetadata.md)                   | Update metadata for self in roster.          |
| [ChangeScreenSharingRole](../api/call-changescreensharingrole.md) | Start and stop sharing screen in the call.   |

To interact with other participants on the call, use the participants object.

| Method                                                            | Description                                  |
|:------------------------------------------------------------------|:---------------------------------------------|
| [List participants](../api/call-list-participants.md)             | Get a participant object collection.         |
| [Invite Participants](../api/participant-invite.md)               | Invite participants to the active call.      |
| [Mute All Participants](../api/participant-muteall.md)            | Mute all participants in the call.           |

## Media

Media processing is managed through the Microsoft Real-time Media Platform. The Real-time Media Platform helps bots engage in Microsoft Teams audio/video calls and meetings. It allows real-time bots to participate in both peer-to-peer and multiparty calls​.

When the bot answers an incoming call, or joins a new or existing call, it needs to tell the Real-time Media Platform how media will be handled. If you are building an Interactive Voice Response (IVR) system, you can offload the expensive audio processing to Microsoft service hosted media components. If your bot requires direct access to media streams, we offer an application-hosted media option through the Real-time Media SDK.

### Service-hosted media

Bots can manage the workflow and offload audio processing to the Microsoft Real-time Media Platform. With service-hosted media, you have serveral options to implement and host your bot. Consider using one of the available [SDKs](https://developer.microsoft.com/graph/code-samples-and-sdks). A service-hosted media bot can be implemented as a stateless service as it does not process media locally.

| Method                                                        | Description                                             |
|:--------------------------------------------------------------|:--------------------------------------------------------|
| [PlayPrompt](../api/call-playprompt.md)                       | Play an audio clip to the user.                         |
| [Record](../api/call-record.md)                               | Optionally play a prompt and record an audio clip.      |
| [SubscribeToTone](../api/call-subscribetotone.md)             | Subscribe to DTMF tones from the user.                  |
| [CancelMediaProcessing](../api/call-cancelmediaprocessing.md) | Cancel any media processing already queued.             |

### Application-hosted media

For the bot to get direct access to the media, the bot needs the Access-Media permission. The Real-time Media library and the stateful SDK helps you build rich real-time media calling bots. An application-hosted bot must be hosted in a Windows environment. [Application hosted media samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples) show how to build the bot in various Azure Platforms (including Cloud Services and Service Fabric).

You can use the [Microsoft Graph Calls SDK](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/index.html) to simplify the creation of bots. The SDK provides functionality to manage the states of the resources in memory and to pull in bot developers' media stack.

The Media SDK allows the bot to send and receive audio, video, and video-based screen sharing content. Video-based screen sharing is modeled as a video channel. The bot can subscribe to the mixed audio channel and multiple video channels. For the video channel, the bot has a choice to send and receive video as an encoded H.264 stream or as decoded raw frames.

> **Note:** You may not use the Microsoft.Graph.Calls.Media API to record or otherwise persist media content from calls or meetings that your bot accesses.

## See also

[Calls and online meetings API samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/)

[Known issues](/graph/known-issues#calls-and-online-meetings)
