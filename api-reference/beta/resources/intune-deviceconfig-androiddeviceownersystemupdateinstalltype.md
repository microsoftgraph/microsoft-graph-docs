---
title: "androidDeviceOwnerSystemUpdateInstallType enum type"
description: "System Update Types for Android Device Owner."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# androidDeviceOwnerSystemUpdateInstallType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

System Update Types for Android Device Owner.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default behavior, which typically prompts the user to accept system updates.|
|postpone|1|Postpone automatic install of updates up to 30 days.|
|windowed|2|Install automatically inside a daily maintenance window.|
|automatic|3|Automatically install updates as soon as possible.|




