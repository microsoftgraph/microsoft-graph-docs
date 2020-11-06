---
title: "sharePointActivityUserCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
author: "JeremyKelley"
---

# sharePointActivityUserCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| visitedPage       | Int64  |
| viewedOrEdited    | Int64  |
| synced            | Int64  |
| sharedInternally  | Int64  |
| sharedExternally  | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointActivityUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date",
  "visitedPage": 1024,
  "viewedOrEdited": 1024,
  "synced": 1024,
  "sharedInternally": 1024,
  "sharedExternally": 1024,
  "reportDate": "Date",
  "reportPeriod": "String"
}
```


