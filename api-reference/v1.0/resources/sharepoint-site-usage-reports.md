---
title: "SharePoint site usage reports"
description: "You can use the SharePoint site usage reports to gain a high level view of the value you are getting from SharePoint in terms of the total number of files that users store in SharePoint sites, how many files are actively being used, and the storage consumed across all these sites. Then, you can drill into these reports to understand the trends and per site level details for all sites."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: conceptualPageType
---

# SharePoint site usage reports

Namespace: microsoft.graph

You can use the SharePoint site usage reports to gain a high level view of the value you are getting from SharePoint in terms of the total number of files that users store in SharePoint sites, how many files are actively being used, and the storage consumed across all these sites. Then, you can drill into these reports to understand the trends and per site level details for all sites.

> **Note:** For details about different report views and names, see [Microsoft 365 reports - SharePoint site usage](https://support.office.com/client/SharePoint-site-usage-4ecfb843-e5d5-464d-8bf6-7ed512a9b213).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get site detail](../api/reportroot-getsharepointsiteusagedetail.md) | Stream      | Get details about SharePoint site usage. |
| [Get file counts](../api/reportroot-getsharepointsiteusagefilecounts.md) | Stream      | Get the total number of files across all sites and the number of active files. A file (user or system) is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get site counts](../api/reportroot-getsharepointsiteusagesitecounts.md) | Stream      | Get the total number of files across all sites and the number of active files. A file (user or system) is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get storage](../api/reportroot-getsharepointsiteusagestorage.md) | Stream      | Get the trend of storage allocated and consumed during the reporting period. |
| [Get pages](../api/reportroot-getsharepointsiteusagepages.md) | Stream      | Get the number of pages viewed across all sites. |

