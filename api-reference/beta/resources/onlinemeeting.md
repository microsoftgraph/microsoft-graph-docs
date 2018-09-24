# onlineMeeting resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The resource captures information about the meeting, including the join URL, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
| [Get onlineMeeting](../api/onlinemeeting_get.md) | [onlineMeeting](onlinemeeting.md) | Read properties and relationships of onlineMeeting object. |

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| accessLevel               | String                                                 | The access level that controls admission to the online meeting. Possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `unknown`. |
| audioConferencing         | [audioConferencing](audioconferencing.md)              | Represents phone access information for an onlineMeeting. |
| canceledTime              | DateTime                                               | The time when the meeting was canceled. |
| chatInfo                  | [chatInfo](chatinfo.md)                                | The chat associated with this meeting. |
| creationTime              | DateTime                                               | The time when the meeting was created. Readonly.
| endTime                   | DateTime                                               | End time of the meeting. |
| entryExitAnnouncement     | Boolean                                                | The attendance announcements status for the online meeting. When attendance announcements are enabled, the online meeting will announce the names of the participantswho join the meeting through audio. |
| expirationTime            | DateTime                                               | The absolute Coordinated Universal Time (UTC) date and time after which the online meeting can be deleted.The day and time must be between one year before, and ten years after, the current date and time on the server. |
| id                        | String                                                 | The ID associated with the online meeting. Used in GET Http Request as the id. Read-only. Server generated.|
| isCancelled               | Boolean                                                | Whether the meeting has been canceled. |
| joinUrl                   | String                                                 | The URL that is used when the online meeting is joined from the web. |
| meetingType               | String                                                 | Possible values are: `meetNow`, `calendar`, `recurring`, `broadcast` |
| participants              | [meetingParticipants](meetingparticipants.md)          | The participants associated with the online meeting.  This includes the organizer and the attendees. |
| startTime                 | DateTime                                               | Start time of the meeting. |
| subject                   | String                                                 | The subject of the online meeting. |

## Relationships
None

## JSON representation

Here is a JSON representation of the resource.

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
  "canceledTime": "String (timestamp)",
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "creationTime": "String (timestamp)",
  "endTime": "String (timestamp)",
  "entryExitAnnouncement": true,
  "expirationTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCancelled": false,
  "joinUrl": "String",
  "meetingType": "meetNow | calendar | recurring | broadcast",
  "participants": {"@odata.type": "#microsoft.graph.meetingParticipants"},
  "startTime": "String (timestamp)",
  "subject": "String"
}
```

## Example - onlineMeeting

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.onlineMeeting",
  "truncated": true
}-->
```json
{
  "accessLevel": "sameEnterprise",
  "audioConferencing": {
    "tollNumber": "+12525634478",
    "tollFreeNumber": "+18666390588",
    "participantPasscode": "2425999",
    "leaderPasscode": null,
    "dialinUrl": "https://dialin.teams.microsoft.com/22f12fa0-499f-435b-bc69-b8de580ba330?id=2425999"
  },
  "canceledTime": "2018-03-19T09:46:02Z",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": "0"
  },
  "creationTime": "2018-03-19T09:46:02Z",
  "endTime": "2018-03-19T09:46:02Z",
  "entryExitAnnouncement": false,
  "expirationTime": "2018-03-19T09:46:02Z",
  "id": "013448345",
  "isCancelled": false,
  "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz%40thread.skype/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22550fae72-d251-43ec-868c-373732c2704f%22%7d",
  "meetingType": "calendar",
  "participants": {
    "attendees": [
      {
        "identity": {
          "user": {
            "id": "550fae72-d251-43ec-868c-373732c2704f",
            "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
            "displayName": "Heidi Steen"
          }
        },
        "upn": "upn-value"
      }
    ],
    "organizer": {
      "identity": {
        "user": {
          "id": "550fae72-d251-43ec-868c-373732c2704f",
          "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
          "displayName": "Heidi Steen"
        }
      },
      "upn": "upn-value"
    }
  },
  "startTime": "2018-05-30T00:30:00Z",
  "subject": "Quarterly sales numbers"
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
