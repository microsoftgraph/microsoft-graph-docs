---
title: "teamsUserActivityCounts resource type"
description: "Represents numers of activities by type."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsUserActivityCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents numers of activities by type.

## Properties

| Property            | Type   | Description                                                  |
| :------------------ | :----- | ------------------------------------------------------------ |
| reportRefreshDate   | Date   | The latest date of the content.                              |
| reportDate          | Date   | The date on which the users performed the activities.        |
| teamChatMessages    | Int64  | The number of unique messages that users posted in a team chat. |
| privateChatMessages | Int64  | The number of unique messages that users posted in a private chat. |
| calls               | Int64  | The number of unique 1:1 calls that users participated in.   |
| meetings            | Int64  | The number of unique online meetings that users participated in. |
| reportPeriod        | String | The number of days the report covers.                        |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsUserActivityCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "reportDate": "Date", 
  "teamChatMessages": 1024, 
  "privateChatMessages": 1024, 
  "calls": 1024, 
  "meetings": 1024, 
  "reportPeriod": "String"
}
```


