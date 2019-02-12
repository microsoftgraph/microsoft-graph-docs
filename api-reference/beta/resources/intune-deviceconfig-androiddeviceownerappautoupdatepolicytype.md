---
title: "androidDeviceOwnerAppAutoUpdatePolicyType enum type"
description: "Android Device Owner possible values for states of the device's app auto update policy."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# androidDeviceOwnerAppAutoUpdatePolicyType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner possible values for states of the device's app auto update policy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|userChoice|1|The user can control auto-updates.|
|never|2|Apps are never auto-updated.|
|wiFiOnly|3|Apps are auto-updated over Wi-Fi only.|
|always|4|Apps are auto-updated at any time. Data charges may apply.|




