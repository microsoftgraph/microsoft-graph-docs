---
title: "oneDriveUsageFileCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
author: "JeremyKelley"
---

# oneDriveUsageFileCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| siteType          | String |
| total             | Int64  |
| active            | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oneDriveUsageFileCounts"
} -->

```json
{
  "reportRefreshDate": "Date",
  "siteType": "String",
  "total": 1024,
  "active": 1024,
  "reportDate": "Date",
  "reportPeriod": "String"
}
```


