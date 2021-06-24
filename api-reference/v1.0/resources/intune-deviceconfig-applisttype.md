---
title: "appListType enum type"
description: "Possible values of the compliance app list."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# appListType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the compliance app list.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value, no intent.|
|appsInListCompliant|1|The list represents the apps that will be considered compliant (only apps on the list are compliant).|
|appsNotInListCompliant|2|The list represents the apps that will be considered non compliant (all apps are compliant except apps on the list).|




