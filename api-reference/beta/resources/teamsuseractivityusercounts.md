---
title: "teamsUserActivityUserCounts resource type"
description: "Represents numbers of daily users by activity type."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsUserActivityUserCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents numbers of daily users by activity type.

## Properties

| Property            | Type   | Description                                                  |
| :------------------ | :----- | ------------------------------------------------------------ |
| reportRefreshDate   | Date   | The latest date of the content.                              |
| reportDate          | Date   | The date on which the users performed the activities.        |
| teamChatMessages    | Int64  | The number of users who posted message in a team chat.       |
| privateChatMessages | Int64  | The number of users who posted message in a private chat.    |
| calls               | Int64  | The number of users who participated in 1:1 calls.           |
| meetings            | Int64  | The number of users who participated in online meetings.     |
| otherActions        | Int64  | The number of users who were active but performed other activities than exposed action types offered in the report (sending or replying to channel messages and chat messages, scheduling or participating in 1:1 calls and meetings). Examples actions are when a user changes the Teams status or the Teams status message or opens a Channel Message post but does not reply. |
| reportPeriod        | String | The number of days the report covers.                        |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsUserActivityUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "reportDate": "Date", 
  "teamChatMessages": 1024, 
  "privateChatMessages": 1024, 
  "calls": 1024, 
  "meetings": 1024, 
  "otherActions": 1024, 
  "reportPeriod": "String"
}
```


