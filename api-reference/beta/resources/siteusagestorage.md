---
title: "siteUsageStorage resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
author: ""
---

# siteUsageStorage resource type

## Properties

| Property           | Type   |
| :----------------- | :----- |
| reportRefreshDate  | Date   |
| siteType           | String |
| storageUsedInBytes | Int64  |
| reportDate         | Date   |
| reportPeriod       | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.siteUsageStorage"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "siteType": "String", 
  "storageUsedInBytes": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
