---
title: "roleAssignmentScopeType enum type"
description: "Specifies the type of scope for a Role Assignment."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: enumPageType
---

# roleAssignmentScopeType enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the type of scope for a Role Assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|resourceScope|0|Allow assignments to the specified ResourceScopes.|
|allDevices|1|Allow assignments to all Intune devices.|
|allLicensedUsers|2|Allow assignments to all Intune licensed users.|
|allDevicesAndLicensedUsers|3|Allow assignments to all Intune devices and licensed users.|



