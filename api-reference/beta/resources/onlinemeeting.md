---
title: "onlineMeeting resource type"
description: "Contains information about the meeting, including the join URL, the attendees list, and the description."
author: "VinodRavichandran"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# onlineMeeting resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the meeting, including the URL used to join a meeting, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Create onlineMeeting](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting. |
| [Get onlineMeeting](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| autoAdmittedUsers         | String                                                 | The setting that specifies the type of participants that will automatically be allowed into the online meeting. Read-only. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`|
| audioConferencing         | [audioConferencing](audioconferencing.md)              | The phone access (dial-in) information for an online meeting. Read-only. |
| canceledDateTime          | DateTime                                               | The time in UTC when the meeting was canceled. Read-only. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat information associated with this online meeting. |
| creationDateTime          | DateTime                                               | The meeting creation time in UTC. Read-only. |
| startDateTime             | DateTime                                               | The meeting start time in UTC. |
| endDateTime               | DateTime                                               | The meeting end time in UTC. |
| id                        | String                                                 | The default ID associated with the online meeting. Read-only. |
| isCanceled                | Boolean                                                | Indicates whether the meeting has been canceled. Read-only. |
| joinUrl                   | String                                                 | The join URL of the online meeting. Read-only.|
| isBroadcast               | Boolean                                                | Indicates whether the meeting is a broadcast meeting. |
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| subject                   | String                                                 | The subject of the online meeting. |
| capabilities              | String collection                                      | The list of meeting capabilities. Possible values are: `questionAndAnswer`. |
| videoTeleconferenceId     | String                                                 | The videio teleconferencing ID. Read-only. |

### autoAdmittedUsers values
| Value | Description  |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| organizer | Only the meeting organizer is admitted directly.  Everyone else waits in the lobby, until admitted by the organizer  |
| invitedUsersInCompany | The meeting organizer and the users in the same company invited by the organizer join the meeting directly.  Everyone else waits in lobby until admitted.  |
| everyoneInCompany | Everyone in the same company as the organizer join the meeting directly.  Federated, anonymous users wait in lobby until admitted.  |
| everyoneInSameAndFederatedCompany |  Everyone in same company as the organizer and federated companies join the meeting directly.  Anonymous users wait in lobby until admitted.  |
| everyone | Any user is allowed, which means that everyone (including anonymous users) can join the meeting directly without waiting in lobby.  |


## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "autoAdmittedUsers": "everyone | everyoneInSameAndFederatedCompany | everyoneInCompany | invitedUsersInCompany | organizer",
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "canceledDateTime": "String (timestamp)",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCanceled": false,
  "joinUrl": "String",
  "isBroadcast": false,
  "participants": {"@odata.type": "#microsoft.graph.meetingParticipants"},
  "startDateTime": "String (timestamp)",
  "subject": "String",
  "capabilities": [ "questionAndAnswer" ],
  "videoTeleconferenceId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onlineMeeting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
