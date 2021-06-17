---
title: "onlineMeeting resource type"
description: "Contains information about a meeting."
author: "mkhribech"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# onlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a meeting, including the URL used to join a meeting, the attendees list, and the description.

## Methods

| Method                                                             | Return Type                       | Description                                                                                                       |
| :----------------------------------------------------------------- | :-------------------------------- | :---------------------------------------------------------------------------------------------------------------- |
| [Create](../api/application-post-onlineMeetings.md)                | [onlineMeeting](onlinemeeting.md) | Create an online meeting.                                                                                         |
| [Get](../api/onlinemeeting-get.md)                                 | [onlineMeeting](onlinemeeting.md) | Read the properties and relationships of an **onlineMeeting** object.                                             |
| [Update](../api/onlinemeeting-update.md)                           | [onlineMeeting](onlinemeeting.md) | Update the properties of an **onlineMeeting** object. |
| [Delete](../api/onlinemeeting-delete.md)                           | None                              | Delete an **onlineMeeting** object.                                                                             |
| [Create or get onlineMeeting](../api/onlinemeeting-createorget.md) | [onlineMeeting](onlinemeeting.md) | Create an online meeting with a custom, external ID. If the meeting already exists, retrieve its properties.      |

## Properties

| Property              | Type                                          | Description                                                                                                                                                                                                                                                 |
| :-------------------- | :-------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| allowedPresenters     | [onlineMeetingPresenters](#onlinemeetingpresenters-values)| Specifies who can be a presenter in a meeting. Possible values are `everyone`, `organization`, `roleIsPresenter`, `organizer`, and `unknownFutureValue`.                                                                                                    |
| allowAttendeeToEnableCamera | Boolean | Indicates whether attendees can turn on their camera. |
| allowAttendeeToEnableMic | Boolean | Indicates whether attendees can turn on their microphone. |
| allowMeetingChat      | [meetingChatMode](#meetingchatmode-values) | Specifies the mode of meeting chat. |
| allowTeamworkReactions | Boolean | Indicates if Teams reactions are enabled for the meeting. |
| alternativeRecording  | Stream                                        | The content stream of the alternative recording of a live event. Read-only.                                                                                                                                                                                 |
| attendeeReport        | Stream                                        | The content stream of the attendee report of a live event. Read-only.                                                                                                                                                                                       |
| autoAdmittedUsers (deprecated)    | String                                        | The setting that specifies the type of participants that will automatically be allowed into the online meeting. Possible values are: `everyone`, `everyoneInSameAndFederatedCompany`, `everyoneInCompany`, `invitedUsersInCompany`, `organizer`. Read-only. |
| audioConferencing     | [audioConferencing](audioconferencing.md)     | The phone access (dial-in) information for an online meeting. Read-only.                                                                                                                                                                                    |
| broadcastSettings     | [broadcastMeetingSettings](broadcastMeetingSettings.md)     | Settings related to a live event*                                                                                                                                                                                                                    |
| chatInfo              | [chatInfo](chatinfo.md)                       | The chat information associated with this online meeting.                                                                                                                                                                                                   |
| creationDateTime      | DateTime                                      | The meeting creation time in UTC. Read-only.                                                                                                                                                                                                                |
| capabilities (deprecated)         | meetingCapabilities collection                             | The list of meeting capabilities. Possible values are: `questionAndAnswer`,`unknownFutureValue`.                                                                                                                                                                                 |
| endDateTime           | DateTime                                      | The meeting end time in UTC.                                                                                                                                                                                                                                |
| externalId            | String                                        | The external ID. A custom ID. Optional.                                                                                                                                                                                                                     |
| id                    | String                                        | The default ID associated with the online meeting. Read-only.                                                                                                                                                                                               |
| isBroadcast           | Boolean                                       | Indicates whether this is a live event.                                                                                                                                                                                                                   |
| isEntryExitAnnounced  | Boolean                                       | Indicates whether to announce when callers join or leave.                                                                                                                                                                                                      |
| joinWebUrl            | String                                        | The join URL of the online meeting. Read-only.                                                                                                                                                                                                              |
| joinInformation       | [itemBody](itembody.md)                       | The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only                                                                                                                                       |
| lobbyBypassSettings   | [lobbyBypassSettings](lobbyBypassSettings.md) | Specifies which participants can bypass the meeting lobby.                                                                                                                                                                                                  |
| meetingAttendanceReport | [meetingAttendanceReport](meetingAttendanceReport.md) | The attendance report of a scheduled meeting. Read-only. |
| participants          | [meetingParticipants](meetingparticipants.md) | The participants associated with the online meeting. This includes the organizer and the attendees.                                                                                                                                                        |
| recording             | Stream                                        | The content stream of the recording of a live event. Read-only.                                                                                                                                                                                             |
| startDateTime         | DateTime                                      | The meeting start time in UTC.                                                                                                                                                                                                                              |
| subject               | String                                        | The subject of the online meeting.                                                                                                                                                                                                                          |
| videoTeleconferenceId | String                                        | The video teleconferencing ID. Read-only.                                                                                                                                                                                                                   |

> [!CAUTION]
>
>- The **autoAdmittedUsers** property is deprecated. Use **scope** property of [lobbyBypassSettings](lobbyBypassSettings.md) instead.
>- The **capabilities** property is deprecated. Use **isQuestionAndAnswerEnabled** property of [broadcastMeetingSettings](broadcastMeetingSettings.md) instead.
>- \* Creating live events with the **broadcastSettings** property is in Beta, with important limitations. Please refer to
> [broadcastSettings](broadcastMeetingSettings.md) for more details.

### onlineMeetingPresenters values

| Value              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| everyone           | Everyone is a presenter (This is default option).             |
| organization       | Everyone in organizer’s organization is a presenter.          |
| roleIsPresenter    | Only the participants whose role is presenter are presenters. |
| organizer          | Only the organizer  is a presenter.                           |
| unknownFutureValue | Unknown future value.                                         |

> [!TIP]
> If the value of **allowedPresenters** is set to `roleIsPresenter`, specify each meeting participant's meeting role using the [meetingParticipantInfo](../resources/meetingparticipantinfo.md) **role** property.

### meetingChatMode values

| Value              | Description                                                            |
| ------------------ | ---------------------------------------------------------------------- |
| enabled            | Meeting chat is enabled.                                               |
| disabled           | Meeting chat is disabled.                                              |
| limited            | Meeting chat is enabled but only for the duration of the meeting call. |
| unknownFutureValue | Unknown future value.                                                  |

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
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "joinWebUrl": "String",
  "participants": {"@odata.type": "microsoft.graph.meetingParticipants"},
  "startDateTime": "String (timestamp)",
  "subject": "String",
  "videoTeleconferenceId": "String",
  "isEntryExitAnnounced": "Boolean",
  "lobbyBypassSettings": {"@odata.type": "microsoft.graph.lobbyBypassSettings"},
  "allowedPresenters": "String",
  "isBroadcast": "Boolean",
  "broadcastSettings": {"@odata.type": "microsoft.graph.broadcastSettings"},
  "allowMeetingChat": {"@odata.type": "microsoft.graph.meetingChatMode"},
  "allowTeamworkReactions": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowAttendeeToEnableCamera": "Boolean"
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


