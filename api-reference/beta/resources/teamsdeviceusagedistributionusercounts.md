---
title: "teamsDeviceUsageDistributionUserCounts resource type"
description: "Represents number of users by device type over the selected time period."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsDeviceUsageDistributionUserCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents number of users by device type over the selected time period.

## Properties

| Property          | Type   | Description                                                  |
| :---------------- | :----- | ------------------------------------------------------------ |
| reportRefreshDate | Date   | The latest date of the content.                              |
| web               | Int64  | The number of users who were active in the Teams web client on devices. |
| windowsPhone      | Int64  | The number of users who were active on the Teams mobile client for Windows phone. |
| androidPhone      | Int64  | The number of users who were active on the Teams mobile client for Android. |
| ios               | Int64  | The number of users who were active on the Teams mobile client for iOS. |
| mac               | Int64  | The number of users who were active in the Teams desktop client on a macOS computer. |
| windows           | Int64  | The number of users who were active in the Teams desktop client on a Windows-based computer. |
| chromeOS          | Int64  | The number of users who were active in the Teams desktop client on a ChromeOS computer. |
| linux             | Int64  | The number of users who were active in the Teams desktop client on a Linux computer. |
| reportPeriod      | String | The number of days the report covers.                        |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsDeviceUsageDistributionUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "web": 1024, 
  "windowsPhone": 1024, 
  "androidPhone": 1024, 
  "ios": 1024, 
  "mac": 1024, 
  "windows": 1024, 
  "chromeOS": 1024, 
  "linux": 1024, 
  "reportPeriod": "String"
}
```


