---
title: "complianceState enum type"
description: "Compliance state."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# complianceState enum type

Namespace: microsoft.graph

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




