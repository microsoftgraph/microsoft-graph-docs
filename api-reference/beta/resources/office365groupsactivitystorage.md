---
title: "office365GroupsActivityStorage resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: resourcePageType
---

# office365GroupsActivityStorage resource type

Namespace: microsoft.graph

## Properties

| Property                  | Type   | Description                              |
| :------------------------ | :----- | ---------------------------------------- |
| reportRefreshDate         | Date   | The latest date of the content.          |
| mailboxStorageUsedInBytes | Int64  | The storage used in group mailbox.       |
| siteStorageUsedInBytes    | Int64  | The storage used in SharePoint document library. |
| reportDate                | Date   | The snapshot date for Exchange and SharePoint used storage. |
| reportPeriod              | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityStorage"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "mailboxStorageUsedInBytes": 1024, 
  "siteStorageUsedInBytes": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```


