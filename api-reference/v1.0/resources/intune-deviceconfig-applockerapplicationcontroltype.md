---
title: "appLockerApplicationControlType enum type"
description: "Possible values of AppLocker Application Control Types"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# appLockerApplicationControlType enum type

Namespace: microsoft.graph

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




