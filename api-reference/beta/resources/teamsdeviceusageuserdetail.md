---
title: "teamsDeviceUsageUserDetail resource type"
description: "The following is a JSON representation of the resource."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsDeviceUsageUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property          | Type    |
| :---------------- | :------ |
| reportRefreshDate | Date    |
| userPrincipalName | String  |
| lastActivityDate  | Date    |
| isDeleted         | Boolean |
| deletedDate       | Date    |
| usedWeb           | Boolean |
| usedWindowsPhone  | Boolean |
| usediOS           | Boolean |
| usedMac           | Boolean |
| usedAndroidPhone  | Boolean |
| usedWindows       | Boolean |
| reportPeriod      | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsDeviceUsageUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "usedWeb": true, 
  "usedWindowsPhone": true, 
  "usediOS": true, 
  "usedMac": true, 
  "usedAndroidPhone": true, 
  "usedWindows": true, 
  "reportPeriod": "String"
}
```


