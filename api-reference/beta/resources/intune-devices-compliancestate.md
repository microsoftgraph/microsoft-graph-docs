---
title: "complianceState enum type"
description: "Compliance state."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# complianceState enum type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Compliance state.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|compliant|1|Compliant.|
|noncompliant|2|Device is non-compliant and is blocked from corporate resources.|
|conflict|3|Conflict with other rules.|
|error|4|Error.|
|inGracePeriod|254|Device is non-compliant but still has access to corporate resources|
|configManager|255|Managed by Config Manager|




