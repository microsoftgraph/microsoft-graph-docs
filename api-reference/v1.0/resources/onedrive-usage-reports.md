---
title: "OneDrive usage reports"
description: "You can use the OneDrive usage reports to gain a high-level view of the value you are getting from OneDrive in terms of the total number of files and storage used across all the OneDrive accounts in your organization. You can then drill down to understand the trends of active OneDrive accounts, how many files users have interacted with, and how much storage is used. These reports can also give you the details per OneDrive account."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# OneDrive usage reports

Namespace: microsoft.graph

You can use the OneDrive usage reports to gain a high-level view of the value you are getting from OneDrive in terms of the total number of files and storage used across all the OneDrive accounts in your organization. You can then drill down to understand the trends of active OneDrive accounts, how many files users have interacted with, and how much storage is used. These reports can also give you the details per OneDrive account.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - OneDrive for Business usage](https://support.office.com/client/OneDrive-for-Business-usage-0de3b312-c4e8-4e4b-a02d-32b2f726a680).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | ---------------------------------------- |
| [Get account detail](../api/reportroot-getonedriveusageaccountdetail.md) | Stream      | Get details about OneDrive usage by account. |
| [Get account counts](../api/reportroot-getonedriveusageaccountcounts.md) | Stream      | Get the trend in the number of active OneDrive for Business sites. Any site on which users viewed, modified, uploaded, downloaded, shared, or synced files is considered an active site. |
| [Get file counts](../api/reportroot-getonedriveusagefilecounts.md) | Stream      | Get the total number of files across all sites and how many are active files. A file is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get storage](../api/reportroot-getonedriveusagestorage.md) | Stream      | Get the trend on the amount of storage you are using in OneDrive for Business. |

