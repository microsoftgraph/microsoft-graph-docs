---
title: "teamsUserActivityUserDetail resource type"
description: "Represents details about Microsoft Teams user activity by user."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsUserActivityUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about Microsoft Teams user activity by user.

## Properties

| Property                                 | Type              | Description                                                  |
| :--------------------------------------- | :---------------- | ------------------------------------------------------------ |
| reportRefreshDate                        | Date              | The latest date of the content.                              |
| userPrincipalName                        | String            | The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. |
| isLicensed                               | Boolean           | Whether the user has been assigned a Teams license.          |
| lastActivityDate                         | Date              | The last date that the user participated in a Microsoft Teams activity. |
| isDeleted                                | Boolean           | Whether this user has been deleted or soft deleted.          |
| deletedDate                              | Date              | The date when the delete operation happened. Default value is "null" when the user has not been deleted. |
| assignedProducts                         | String collection | Products the user assigned with.                             |
| teamChatMessageCount                     | Int64             | The number of unique messages that the user posted in a team chat. |
| privateChatMessageCount                  | Int64             | The number of unique messages that the user posted in a private chat. |
| callCount                                | Int64             | The number of 1:1 calls that the user participated in.       |
| meetingCount                             | Int64             | The number of online meetings that the user participated in. |
| meetingsOrganizedCount                   | Int64             | The sum of one-time scheduled, Recurring, ad hoc and unclassified meetings a user organized. |
| meetingsAttendedCount                    | Int64             | The sum of the one-time scheduled, recurring, ad hoc and unclassified meetings a user participated in. |
| adHocMeetingsOrganizedCount              | Int64             | The number of ad hoc meetings a user organized.              |
| adHocMeetingsAttendedCount               | Int64             | The number of ad hoc meetings a user participated in.        |
| scheduledOneTimeMeetingsOrganizedCount   | Int64             | The number of one-time scheduled meetings a user organized.  |
| scheduledOneTimeMeetingsAttendedCount    | Int64             | The number of the one-time scheduled meetings a user participated in. |
| scheduledRecurringMeetingsOrganizedCount | Int64             | The number of recurring meetings a user organized.           |
| scheduledRecurringMeetingsAttendedCount  | Int64             | The number of the recurring meetings a user participated in. |
| audioDuration                            | Duration          | Audio duration the user participated in.                     |
| videoDuration                            | Duration          | Video duration the user participated in.                     |
| screenShareDuration                      | Duration          | Screen sharing duration the user participated in.            |
| hasOtherAction                           | Boolean           | The User is active but has performed other activities than exposed action types offered in the report (sending or replying to channel messages and chat messages, scheduling or participating in 1:1 calls and meetings). Examples actions are when a user changes the Teams status or the Teams status message or opens a Channel Message post but does not reply. |
| reportPeriod                             | String            | The number of days the report covers.                        |

## JSON representation

The following is a JSON representaion of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsUserActivityUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "isLicensed": true, 
  "lastActivityDate": "Date", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "assignedProducts": ["String"],
  "teamChatMessageCount": 1024, 
  "privateChatMessageCount": 1024, 
  "callCount": 1024, 
  "meetingCount": 1024, 
  "meetingsOrganizedCount": 1024, 
  "meetingsAttendedCount": 1024, 
  "adHocMeetingsOrganizedCount": 1024, 
  "adHocMeetingsAttendedCount": 1024, 
  "scheduledOneTimeMeetingsOrganizedCount": 1024, 
  "scheduledOneTimeMeetingsAttendedCount": 1024, 
  "scheduledRecurringMeetingsOrganizedCount": 1024, 
  "scheduledRecurringMeetingsAttendedCount": 1024, 
  "audioDuration": "Duration", 
  "videoDuration": "Duration", 
  "screenShareDuration": "Duration", 
  "hasOtherAction": true, 
  "reportPeriod": "String"
}
```


