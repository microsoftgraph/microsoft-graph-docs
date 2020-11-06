---
title: "office365ServicesUserCounts resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: resourcePageType
---

# office365ServicesUserCounts resource type

Namespace: microsoft.graph

## Properties

| Property                 | Type   | Description                              |
| :----------------------- | :----- | ---------------------------------------- |
| reportRefreshDate        | Date   | The latest date of the content.          |
| exchangeActive           | Int64  | The number of active users on Exchange. Any user who can read and send email is considered an active user. |
| exchangeInactive         | Int64  | The number of inactive users on Exchange. |
| oneDriveActive           | Int64  | The number of active users on OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user. |
| oneDriveInactive         | Int64  | The number of inactive users on OneDrive. |
| sharePointActive         | Int64  | The number of active users on SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user. |
| sharePointInactive       | Int64  | The number of inactive users on SharePoint. |
| skypeForBusinessActive   | Int64  | The number of active users on Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user. |
| skypeForBusinessInactive | Int64  | The number of inactive users on Skype For Business. |
| yammerActive             | Int64  | The number of active users on Yammer. Any user who can post, read, or like messages is considered an active user. |
| yammerInactive           | Int64  | The number of inactive users on Yammer.  |
| teamsActive              | Int64  | The number of active users on Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user. |
| teamsInactive            | Int64  | The number of inactive users on Microsoft Teams.     |
| office365Active          | Int64  | The number of active users on Microsoft 365.   |
| office365Inactive        | Int64  | The number of inactive users on Microsoft 365.     |
| reportPeriod             | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ServicesUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "exchangeActive": 1024, 
  "exchangeInactive": 1024, 
  "oneDriveActive": 1024, 
  "oneDriveInactive": 1024, 
  "sharePointActive": 1024, 
  "sharePointInactive": 1024, 
  "skypeForBusinessActive": 1024, 
  "skypeForBusinessInactive": 1024, 
  "yammerActive": 1024, 
  "yammerInactive": 1024, 
  "teamsActive": 1024, 
  "teamsInactive": 1024, 
  "office365Active": 1024,
  "office365Inactive": 1024,
  "reportPeriod": "String"
}
```


