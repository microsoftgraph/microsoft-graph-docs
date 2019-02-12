---
title: "appListType enum type"
description: "Possible values of the compliance app list."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# appListType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the compliance app list.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value, no intent.|
|appsInListCompliant|1|The list represents the apps that will be considered compliant (only apps on the list are compliant).|
|appsNotInListCompliant|2|The list represents the apps that will be considered non compliant (all apps are compliant except apps on the list).|




