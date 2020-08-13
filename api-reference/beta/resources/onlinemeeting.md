---
title: "onlineMeeting resource type"
description: "Contains information about the meeting, including the join URL, the attendees list, and the description."
author: "ananmishr"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# onlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the meeting, including the URL used to join a meeting, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Create](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting. |
| [Get](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object. |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting with a custom, external ID. If the meeting already exists, retrieve its properties. |
| [Update](../api/onlinemeeting-update.md) | [onlineMeeting](onlinemeeting.md) | Update the **startDateTime**, **endDateTime**, **subject**, and **participants** properties of an online meeting. |
| [Delete](../api/onlinemeeting-delete.md) | None | Delete an **onlineMeeting** resource. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| autoAdmittedUsers         | String                                                 | The setting that specifies the type of participants that will automatically be allowed into the online meeting. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`. Read-only.|
| audioConferencing         | [audioConferencing](audioconferencing.md)              | The phone access (dial-in) information for an online meeting. Read-only. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat information associated with this online meeting. |
| creationDateTime          | DateTime                                               | The meeting creation time in UTC. Read-only. |
| startDateTime             | DateTime                                               | The meeting start time in UTC. |
| endDateTime               | DateTime                                               | The meeting end time in UTC. |
| id                        | String                                                 | The default ID associated with the online meeting. Read-only. |
| joinWebUrl                   | String                                                 | The join URL of the online meeting. Read-only.|
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| subject                   | String                                                 | The subject of the online meeting. |
| capabilities              | String collection                                      | The list of meeting capabilities. Possible values are: `questionAndAnswer`. |
| videoTeleconferenceId     | String                                                 | The video teleconferencing ID. Read-only. |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only |
| externalId                | String                                                 | The external ID. A custom ID. Optional. |

### autoAdmittedUsers values
| Value | Description  |
| :------------------------ | :----------------------------------------------------- |
| organizer | Only the meeting organizer is admitted directly.  Everyone else waits in the lobby, until admitted by the organizer  |
| invitedUsersInCompany | The meeting organizer and the users in the same company invited by the organizer join the meeting directly.  Everyone else waits in lobby until admitted.  |
| everyoneInCompany | Everyone in the same company as the organizer join the meeting directly.  Federated, anonymous users wait in lobby until admitted.  |
| everyoneInSameAndFederatedCompany |  Everyone in same company as the organizer and federated companies join the meeting directly.  Anonymous users wait in lobby until admitted.  |
| everyone | Any user is allowed, which means that everyone (including anonymous users) can join the meeting directly without waiting in lobby.  |


## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  "externalId"
  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "autoAdmittedUsers": "everyone | everyoneInSameAndFederatedCompany | everyoneInCompany | invitedUsersInCompany | organizer",
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "joinWebUrl": "String",
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
