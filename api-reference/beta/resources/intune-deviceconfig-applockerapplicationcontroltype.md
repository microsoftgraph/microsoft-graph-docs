---
title: "appLockerApplicationControlType enum type"
description: "Possible values of AppLocker Application Control Types"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# appLockerApplicationControlType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of AppLocker Application Control Types

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no Application Control type selected.|
|enforceComponentsAndStoreApps|1|Enforce Windows component and store apps.|
|auditComponentsAndStoreApps|2|Audit Windows component and store apps.|
|enforceComponentsStoreAppsAndSmartlocker|3|Enforce Windows components, store apps and smart locker.|
|auditComponentsStoreAppsAndSmartlocker|4|Audit Windows components, store apps and smart locker​.|




