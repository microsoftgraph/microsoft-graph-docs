---
title: "appLogUploadState enum type"
description: "AppLogUploadStatus"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# appLogUploadState enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

AppLogUploadStatus

## Members
|Member|Value|Description|
|:---|:---|:---|
|pending|0|Request is waiting to be processed or under processing|
|completed|1|Request is completed with file uploaded to Azure blob for download.|
|failed|2|Request finished processing and in error state.|




