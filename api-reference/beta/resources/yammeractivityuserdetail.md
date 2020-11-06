---
title: "yammerActivityUserDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: resourcePageType
---

# yammerActivityUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property          | Type              |
| :---------------- | :---------------- |
| reportRefreshDate | Date              |
| userPrincipalName | String            |
| displayName       | String            |
| userState         | String            |
| stateChangeDate   | Date              |
| lastActivityDate  | Date              |
| postedCount       | Int64             |
| readCount         | Int64             |
| likedCount        | Int64             |
| assignedProducts  | String collection |
| reportPeriod      | String            |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.yammerActivityUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "userState": "String", 
  "stateChangeDate": "Date", 
  "lastActivityDate": "Date", 
  "postedCount": 1024, 
  "readCount": 1024, 
  "likedCount": 1024, 
  "assignedProducts": ["String"], 
  "reportPeriod": "String"
}
```


