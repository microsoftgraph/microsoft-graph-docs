---
title: "remediationState enum type"
description: "Indicates the type of execution status of the device management script."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# remediationState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of execution status of the device management script.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown result.|
|skipped|1|Remediation script execution was skipped|
|success|2|Remediation script executed successfully and remediated the device state|
|remediationFailed|3|Remediation script executed successfully but failed to remediated the device state|
|scriptError|4|Remediation script execution encountered and error or timed out|




