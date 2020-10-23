---
title: "Microsoft 365 active users reports"
description: "You can use the Microsoft 365 active users reports to find out how many product licenses are being used by individuals in your organization, and drill down for information about which users are using what products. These reports can help administrators identify underutilized products or users that might need additional training or information."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# Microsoft 365 active users reports

Namespace: microsoft.graph

You can use the Microsoft 365 active users reports to find out how many product licenses are being used by individuals in your organization, and drill down for information about which users are using what products. These reports can help administrators identify underutilized products or users that might need additional training or information.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - Active Users](https://support.office.com/client/Active-Users-fc1cf1d0-cd84-43fd-adb7-a4c4dfa8112d).

## Reports
| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot-getoffice365activeuserdetail.md) | Stream      | Get details about Microsoft 365 active users. |
| [Get user counts](../api/reportroot-getoffice365activeusercounts.md) | Stream      | Get the count of daily active users in the reporting period by product. |
| [Get services user counts](../api/reportroot-getoffice365servicesusercounts.md) | Stream      | Get the count of users by activity type and service. |

