---
title: "windowsUpdateStatus enum type"
description: "Windows update for business configuration device states"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsUpdateStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows update for business configuration device states

## Members
|Member|Value|Description|
|:---|:---|:---|
|upToDate|0|There are no pending updates, no pending reboot updates and no failed updates.|
|pendingInstallation|1|There are updates that’s pending installation which includes updates that are not approved. There are no Pending reboot updates, no failed updates.|
|pendingReboot|2|There are updates that requires reboot. There are not failed updates.|
|failed|3|There are updates failed to install on the device.|




