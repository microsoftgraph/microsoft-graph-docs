---
title: "roleAssignmentScopeType enum type"
description: "Specifies the type of scope for a Role Assignment."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# roleAssignmentScopeType enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the type of scope for a Role Assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|resourceScope|0|Allow assignments to the specified ResourceScopes.|
|allDevices|1|Allow assignments to all Intune devices.|
|allLicensedUsers|2|Allow assignments to all Intune licensed users.|
|allDevicesAndLicensedUsers|3|Allow assignments to all Intune devices and licensed users.|




