---
title: "windowsDefenderApplicationControlSupplementalPolicyStatuses enum type"
description: "Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsDefenderApplicationControlSupplementalPolicyStatuses enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The status of the WindowsDefenderApplicationControl supplemental policy is not known.|
|success|1|The WindowsDefenderApplicationControl supplemental policy is in effect.|
|tokenError|2|The WindowsDefenderApplicationControl supplemental policy is structurally okay but there is an error with authorizing the token.|
|notAuthorizedByToken|3|The token does not authorize this WindowsDefenderApplicationControl supplemental policy.|
|policyNotFound|4|The WindowsDefenderApplicationControl supplemental policy is not found.|




