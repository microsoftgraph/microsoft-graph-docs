---
title: "teamsUserActivityCounts resource type"
description: "The following is a JSON representation of the resource."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsUserActivityCounts resource type

Namespace: microsoft.graph

## Properties

| Property            | Type   |
| :------------------ | :----- |
| reportRefreshDate   | Date   |
| reportDate          | Date   |
| teamChatMessages    | Int64  |
| privateChatMessages | Int64  |
| calls               | Int64  |
| meetings            | Int64  |
| reportPeriod        | String |


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


