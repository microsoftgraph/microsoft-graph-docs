---
title: "edgeTelemetryMode enum type"
description: "Type of browsing data sent to Microsoft 365 analytics"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# edgeTelemetryMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of browsing data sent to Microsoft 365 analytics

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default – No telemetry data collected or sent|
|intranet|1|Allow sending intranet history only: Only send browsing history data for intranet sites|
|internet|2|Allow sending internet history only: Only send browsing history data for internet sites|
|intranetAndInternet|3|Allow sending both intranet and internet history: Send browsing history data for intranet and internet sites|




