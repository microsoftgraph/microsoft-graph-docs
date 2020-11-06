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

Contains information about the meeting, including the URL used to join a meeting, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Create onlineMeeting](../api/application-post-onlineMeetings.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting. |
| [Get onlineMeeting](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object. |
| [Delete onlineMeeting](../api/onlinemeeting-delete.md) | None | Delete an online meeting. |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting with a custom, external ID. If the meeting already exists, retrieve its properties. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| audioConferencing         | [audioConferencing](audioconferencing.md)              | The phone access (dial-in) information for an online meeting. Read-only. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat information associated with this online meeting. |
| creationDateTime          | DateTime                                               | The meeting creation time in UTC. Read-only. |
| startDateTime             | DateTime                                               | The meeting start time in UTC. |
| endDateTime               | DateTime                                               | The meeting end time in UTC. |
| id                        | String                                                 | The default ID associated with the online meeting. Read-only. |
| joinWebUrl                | String                                                 | The join URL of the online meeting. Read-only.|
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| subject                   | String                                                 | The subject of the online meeting. |
| videoTeleconferenceId     | String                                                 | The video teleconferencing ID. Read-only. |
| joinInformation | [itemBody](itembody.md) | The join information in the language and locale variant specified in the `Accept-Language` request HTTP header. Read-only. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "participants": {"@odata.type": "#microsoft.graph.meetingParticipants"},
  "startDateTime": "String (timestamp)",
  "subject": "String",
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

