---
title: "emailActivitySummary resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "outlook"
doc_type: resourcePageType
---

# emailActivitySummary resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| send              | Int64  |
| receive           | Int64  |
| read              | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailActivitySummary"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "send": 1024, 
  "receive": 1024, 
  "read": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```


