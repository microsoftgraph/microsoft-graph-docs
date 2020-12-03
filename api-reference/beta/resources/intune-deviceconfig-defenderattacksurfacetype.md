---
title: "defenderAttackSurfaceType enum type"
description: "Possible values of Defender Attack Surface Reduction Rules"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# defenderAttackSurfaceType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Defender Attack Surface Reduction Rules

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Default, which disables attack surface reduction rule.|
|block|1|Enable the attack surface reduction rule.|
|auditMode|2|Evaluate how the ASR rule would impact your organization if enabled. Does not change functionality but generate logs.|
|warn|6|Warning message to end user with ability to bypass block from attack surface reduction rule.|
|disable|99|Disable the attack surface reduction rule|




