---
title: "appLogUploadState enum type"
description: "AppLogUploadStatus"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# appLogUploadState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

AppLogUploadStatus

## Members
|Member|Value|Description|
|:---|:---|:---|
|pending|0|Request is waiting to be processed or under processing|
|completed|1|Request is completed with file uploaded to Azure blob for download.|
|failed|2|Request finished processing and in error state.|




