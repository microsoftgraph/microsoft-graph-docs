---
title: "onlineMeeting resource type"
description: "Captures information about the meeting, including the join URL, the attendees list, and the description."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# onlineMeeting resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Captures information about the meeting, including the join URL, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Get onlineMeeting](../api/onlinemeeting-get.md) | [onlineMeeting](onlinemeeting.md) | Read properties and relationships of onlineMeeting object. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| accessLevel               | String                                                 | The access level that controls admission to the online meeting. Possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `unknown`. |
| audioConferencing         | [audioConferencing](audioconferencing.md)              | Represents phone access information for an onlineMeeting. |
| canceledDateTime          | DateTime                                               | The time when the meeting was canceled. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat associated with this meeting. |
| creationDateTime          | DateTime                                               | The time when the meeting was created. Readonly.
| endDateTime               | DateTime                                               | End time of the meeting. |
| entryExitAnnouncement     | Boolean                                                | The attendance announcements status for the online meeting. When attendance announcements are enabled, the online meeting will announce the names of the participantswho join the meeting through audio. |
| expirationDateTime        | DateTime                                               | The absolute Coordinated Universal Time (UTC) date and time after which the online meeting can be deleted. The day and time must be between one year before, and ten years after, the current date and time on the server. |
| id                        | String                                                 | The ID associated with the online meeting. Used in a GET HTTP request as the ID. Read-only. Server generated. |
| isCancelled               | Boolean                                                | Whether the meeting has been canceled. |
| joinUrl                   | String                                                 | The URL that is used when the online meeting is joined from the web. |
| meetingType               | String                                                 | Possible values are: `meetNow`, `scheduled`, `recurring`, `broadcast` |
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| startDateTime             | DateTime                                               | Start time of the meeting. |
| subject                   | String                                                 | The subject of the online meeting. |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onlineMeeting"
}-->
```json
{
  "accessLevel": "everyone | invited | locked | sameEnterprise",
  "audioConferencing": {"@odata.type": "#microsoft.graph.audioConferencing"},
  "canceledDateTime": "String (timestamp)",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "entryExitAnnouncement": true,
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCancelled": false,
  "joinUrl": "String",
  "meetingType": "meetNow | scheduled | recurring | broadcast",
  "participants": {"@odata.type": "#microsoft.graph.meetingParticipants"},
  "startDateTime": "String (timestamp)",
  "subject": "String"
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
