---
title: "androidDeviceOwnerSystemUpdateInstallType enum type"
description: "System Update Types for Android Device Owner."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# androidDeviceOwnerSystemUpdateInstallType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

System Update Types for Android Device Owner.
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default behavior, which typically prompts the user to accept system updates.|
|postpone|1|Postpone automatic install of updates up to 30 days.|
|windowed|2|Install automatically inside a daily maintenance window.|
|automatic|3|Automatically install updates as soon as possible.|





