# OnlineMeeting resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The resource captures information about the meeting, including the join URL, the attendees list, and the description.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
|[Get onlineMeeting](../api/onlineMeeting_get.md)|[onlineMeeting](onlineMeeting.md)|Read properties and relationships of onlineMeeting object.|

## Properties

| Property                  | Type                                                   | Description                                                                                                                |
| :------------------------ | :----------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------- |
| accessLevel               | String                                                 | The access level that controls admission to the online meeting. Possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `unknown`. |
| audioConferencing         | [audioConferencing](audioConferencing.md)              | Represents phone access information for an onlineMeeting. |
| automaticLeaderAssignment | Boolean                                                | The policy that determines which participants are automatically promoted to leaders. An online meeting organizer can schedule a meeting so that users are automatically promoted to the leader role when they join the meeting. For example, if the meeting is scheduled withautomatic promotion policy set to AutomaticLeaderAssignment.SameEnterprise, then any participants from the organizer's company are automatically promoted to leaders when they join the meeting. Conference leaders can still promote specific users to the leader role, including anonymous users. |
| calendarId                | String                                                 | Calendar id. |
| canceledTime              | DateTime                                               | The time when the meeting was canceled. |
| capabilities              | String collection                                      | Combination of `q and a`, `videoOnDemand`, `yammer`, `video interop` |
| chatInfo                  | [chatInfo](chatInfo.md)                                | The chat associated with this meeting. |
| creationTime              | DateTime                                               | The time when the meeting was created. Readonly.
| endTime                   | DateTime                                               | End time of the meeting. |
| entryExitAnnouncement     | Boolean                                                | The attendance announcements status for the online meeting. When attendance announcements are enabled, the online meeting will announce the names of the participantswho join the meeting through audio. |
| expirationTime            | DateTime                                               | The absolute Coordinated Universal Time (UTC) date and time after which the online meeting can be deleted.The day and time must be between one year before, and ten years after, the current date and time on the server. |
| id                        | String                                                 | The conference ID for the online meeting. Attendees who dial into the online meeting by using a PSTN phone use the conference ID. |
| isCanceled                | Boolean                                                | Whether the meeting has been canceled. |
| joinUrl                   | String                                                 | The URL that is used when the online meeting is joined from the web. |
| lobbyBypassForPhoneUsers  | Boolean                                                | The lobby bypass setting for this online meeting. |
| meetingType               | String                                                 | Possible values are: `meetNow`, `calendar`, `recurring`, `broadcast` |
| organizer                 | [identitySet](identitySet.md)                          | The person who scheduled the meeting.Organizers can enumerate or change only the conferences that they organize. | |
| participants              | [identitySet](identitySet.md) collection               | The participants invited to the meeting. |
| phoneUserAdmission        | Boolean                                                | Whether participants can join the online meeting over the phone. Setting this property to true means that online meeting participants can join the meetingover the phone through the Conferencing Auto Attendant (CAA) service. |
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
  "accessLevel": "String",
  "audioConferencing": {"@odata.type": "microsoft.graph.audioConferencing"},
  "automaticLeaderAssignment": true,
  "calendarId": "String",
  "canceledTime": "String (timestamp)",
  "capabilities": "String",
  "chatInfo": {"@odata.type": "microsoft.graph.chatInfo"},
  "creationTime": "String (timestamp)",
  "endTime": "String (timestamp)",
  "entryExitAnnouncement": true,
  "expirationTime": "String (timestamp)",
  "id": "String (identifier)",
  "isCanceled": false,
  "joinUrl": "String",
  "lobbyBypassForPhoneUsers": true,
  "meetingType": "String",
  "organizer": {"@odata.type": "microsoft.graph.identitySet"},
  "participants": [{"@odata.type": "microsoft.graph.identitySet"}],
  "phoneUserAdmission": true,
  "startTime": "String (timestamp)",
  "subject": "String"
}
```

## Example - onlineMeeting

``` json
{
  "accessLevel": "sameEnterprise",
  "audioConferencing": {
    "tollNumber": "12525634478",
    "tollFreeNumber": "18666390588",
    "participantPasscode": "2425999",
    "leaderPasscode": null,
    "dialinUrl": "https://dialin.teams.microsoft.com/22f12fa0-499f-435b-bc69-b8de580ba330?id=2425999"
  },
  "canceledTime": "0001-01-01T00:00:00Z",
  "chatInfo": {
    "threadId": "19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype",
    "messageId": "0",
    "replyChainMessageId": null
  },
  "creationTime": "2018-05-30T00:12:19.0726086Z",
  "endTime": "2018-05-30T01:00:00Z",
  "entryExitAnnouncement": false,
  "expirationTime": "2019-01-16T17:03:39.0579549Z",
  "id": "013448345",
  "isCanceled": false,
  "joinUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz%40thread.skype/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22550fae72-d251-43ec-868c-373732c2704f%22%7d",
  "meetingType": "calendar",
  "organizer": {
    "user": {
      "id": "550fae72-d251-43ec-868c-373732c2704f",
      "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
    }
  },
  "participants": [
    {
      "user": {
        "id": "550fae72-d251-43ec-868c-373732c2704f",
        "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
      }
    }
  ],
  "phoneUserAdmission": true,
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
