---
title: "emailAppUsageVersionsUserCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "outlook"
doc_type: resourcePageType
---

# emailAppUsageVersionsUserCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| outlook2016       | Int64  |
| outlook2013       | Int64  |
| outlook2010       | Int64  |
| outlook2007       | Int64  |
| undetermined      | Int64  |
| reportPeriod      | String |
| outlookM365       | Int64  |
| outlook2019       | Int64  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailAppUsageVersionsUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "outlook2016": 1024, 
  "outlook2013": 1024, 
  "outlook2010": 1024, 
  "outlook2007": 1024, 
  "undetermined": 1024, 
  "reportPeriod": "String",
  "outlookM365": 1024,
  "outlook2019": 1024
}
```
