---
title: "Office 365 Groups activity reports"
description: "You can gain insights into the activity of Office 365 Groups in your organization and see how many Office 365 groups are being created and used."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Office 365 Groups activity reports

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can gain insights into the activity of Office 365 Groups in your organization and see how many Office 365 groups are being created and used.

> **Note:** For details about different report views and names, see [Office 365 Reports - Office 365 groups](https://support.office.com/client/Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | :-------------- | :--------------------------------------- | ---------------------------------------- |
| [Get group detail](../api/reportroot-getoffice365groupsactivitydetail.md) | Stream          | [office365GroupsActivityDetail](../resources/office365groupsactivitydetail.md) | Get details about Office 365 Groups activity by group. |
| [Get activity counts](../api/reportroot-getoffice365groupsactivitycounts.md) | Stream          | [office365GroupsActivityCounts](../resources/office365groupsactivitycounts.md) | Get the number of group activities across group workloads. |
| [Get group counts](../api/reportroot-getoffice365groupsactivitygroupcounts.md) | Stream          | [office365GroupsActivityGroupCounts](../resources/office365groupsactivitygroupcounts.md) | Get the daily total number of groups and how many of them were active based on email conversations, Yammer posts, and SharePoint file activities. |
| [Get storage](../api/reportroot-getoffice365groupsactivitystorage.md) | Stream          | [office365GroupsActivityStorage](../resources/office365groupsactivitystorage.md) | Get the total storage used across all group mailboxes and group sites. |
| [Get file counts](../api/reportroot-getoffice365groupsactivityfilecounts.md) | Stream          | [office365GroupsActivityFileCounts](../resources/office365groupsactivityfilecounts.md) | Get the total number of files and how many of them were active across all group sites associated with an Office 365 Group. |
