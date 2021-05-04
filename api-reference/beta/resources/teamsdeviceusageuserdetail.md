---
title: "teamsDeviceUsageUserDetail resource type"
description: "Represents details about Microsoft Teams device usage by user."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsDeviceUsageUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about Microsoft Teams device usage by user.

## Properties

| Property          | Type    | Description                                                  |
| :---------------- | :------ | ------------------------------------------------------------ |
| reportRefreshDate | Date    | The latest date of the content.                              |
| userPrincipalName | String  | The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. |
| isLicensed        | Boolean | Whether the user has been assigned a Teams license.          |
| lastActivityDate  | Date    | The last date that the user participated in a Microsoft Teams activity. |
| isDeleted         | Boolean | Whether this user has been deleted or soft deleted.          |
| deletedDate       | Date    | The date when the delete operation happened. Default value is "null" when the user has not been deleted. |
| usedWeb           | Boolean | Whether the user was active in the Teams web client on devices. |
| usedWindowsPhone  | Boolean | Whether the user was active on the Teams mobile client for Windows phone. |
| usediOS           | Boolean | Whether the user was active on the Teams mobile client for iOS. |
| usedMac           | Boolean | Whether the user was active in the Teams desktop client on a macOS computer. |
| usedAndroidPhone  | Boolean | Whether the user was active on the Teams mobile client for Android. |
| usedWindows       | Boolean | Whether the user was active in the Teams desktop client on a Windows-based computer. |
| usedChromeOS      | Boolean | Whether the user was active in the Teams desktop client on a ChromeOS computer. |
| usedLinux         | Boolean | Whether the user was active in the Teams desktop client on a Linux computer. |
| reportPeriod      | String  | The number of days the report covers.                        |

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
  "isLicensed": true, 
  "lastActivityDate": "Date", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "usedWeb": true, 
  "usedWindowsPhone": true, 
  "usediOS": true, 
  "usedMac": true, 
  "usedAndroidPhone": true, 
  "usedWindows": true, 
  "usedChromeOS": true, 
  "usedLinux": true, 
  "reportPeriod": "String"
}
```


