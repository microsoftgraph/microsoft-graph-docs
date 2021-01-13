---
title: "Working with the communications API in Microsoft Graph"
description: "The Microsoft Graph communications API adds a new dimension to how your apps and services can interact with users by enabling voice and video features."
author: "ananmishr"
doc_type: conceptualPageType
ms.prod: cloud-communications
localization_priority: Priority
---

# Working with the communications API in Microsoft Graph

The Microsoft Graph communications API adds a new dimension to how you or your organization can interact with other users by enabling core communication capabilities and features in your apps and services. You can use this API to create and receive calls as well as create and retrieve meeting coordinates.

You can use the communications API to build service applications (bots) that act like participants in a call, and that create and retrieve meetings on behalf of users.
This API provides calling functionality as well as the ability to create and retrieve online meetings. You can use service applications (bots) with this API, where the bot can act as a participant in your VoIP calls or Microsoft Teams meetings, for example.

## Authorization

One of the following [permissions](/graph/permissions-reference#calls-permissions) is required to access the communications API. These permissions need to be granted by the administrator

| Scenario                 | Permissions                                  |
|:------------------------------------|:---------------------------------------------|
| Calling                 | Calls.JoinGroupCallsasGuest.All, Calls.JoinGroupCalls.All, Calls.Initiate.All, Calls.InitiateGroupCalls.All, Calls.AccessMedia.All |
| Meetings                 | OnlineMeetings.ReadWrite.All, OnlineMeetings.Read.All |
| Call records             | CallRecords.Read.All |
| Presences             | Presence.Read, Presence.Read.All |

## Common use cases

The following table lists some of the common uses for the communications API.

| Use cases                         | REST resources                                 | See also  |
|:------------------------------------|:---------------------------------------------|:----------|
| Creating and joining 1-1 and group calls   | [Call](/graph/api/resources/call?view=graph-rest-v1.0)| [Methods for calls](/graph/api/resources/call?view=graph-rest-v1.0#methods)| 
|IVR calls   |     | [Methods for IVR](/graph/api/resources/calls-api-ivr-overview?view=graph-rest-v1.0)
| Call controls (participant) | [Participant](/graph/api/resources/participant?view=graph-rest-v1.0)   ||
|Meetings|[onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0)| [Methods for meetings](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0#methods)|
| Retrieving call records | [callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-1.0) | [Webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-1.0) |
|Presences|[presence](/graph/api/resources/presence?view=graph-rest-v1.0)||

## Common properties

| Resource                | Properties                             |
|:------------------------------------|:---------------------------------------------|
| call                               | [call properties](/graph/api/resources/call?view=graph-rest-v1.0#properties)  |
| participant                         | [participant properties](/graph/api/resources/participant?view=graph-rest-v1.0#properties) |
| onlineMeeting                            | [onlineMeeting properties](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0#properties)                     |
| callRecord | [callRecord properties](/graph/api/resources/callrecords-callrecord#properties) |
|presence|[presence](/graph/api/resources/presence?view=graph-rest-v1.0)|

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## See also

- [Communications API samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/)
- [Communication Signaling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls)
- [Communication Media SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls.Media)