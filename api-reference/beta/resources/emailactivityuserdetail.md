---
title: "emailActivityUserDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "outlook"
doc_type: resourcePageType
---

# emailActivityUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property          | Type              |
| :---------------- | :---------------- |
| reportRefreshDate | Date              |
| userPrincipalName | String            |
| displayName       | String            |
| isDeleted         | Boolean           |
| deletedDate       | Date              |
| lastActivityDate  | Date              |
| sendCount         | Int64             |
| receiveCount      | Int64             |
| readCount         | Int64             |
| assignedProducts  | String collection |
| reportPeriod      | String            |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailActivityUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "lastActivityDate": "Date", 
  "sendCount": 1024, 
  "receiveCount": 1024, 
  "readCount": 1024, 
  "assignedProducts": ["String"], 
  "reportPeriod": "String"
}
```


