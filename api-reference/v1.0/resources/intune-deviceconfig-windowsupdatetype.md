---
title: "windowsUpdateType enum type"
description: "Which branch devices will receive their updates from"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsUpdateType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Which branch devices will receive their updates from

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Allow the user to set.|
|all|1|Semi-annual Channel (Targeted). Device gets all applicable feature updates from Semi-annual Channel (Targeted).|
|businessReadyOnly|2|Semi-annual Channel. Device gets feature updates from Semi-annual Channel.|
|windowsInsiderBuildFast|3|Windows Insider build - Fast|
|windowsInsiderBuildSlow|4|Windows Insider build - Slow|
|windowsInsiderBuildRelease|5|Release Windows Insider build|




