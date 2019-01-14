---
title: "enablement enum type"
description: "Values used to indicate the status of a device. "
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# enablement enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Values used to indicate the status of a device. 

Note that there is a difference between disabled and not configured.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|enabled|1|Enables the setting on the device.|
|disabled|2|Disables the setting on the device.|
