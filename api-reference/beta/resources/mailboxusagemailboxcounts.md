---
title: "mailboxUsageMailboxCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "outlook"
doc_type: resourcePageType
---

# mailboxUsageMailboxCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| total             | Int64  |
| active            | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxUsageMailboxCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "total": 1024, 
  "active": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```


