---
title: "automaticUpdateMode enum type"
description: "Possible values for automatic update mode."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# automaticUpdateMode enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for automatic update mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|notifyDownload|1|Notify on download.|
|autoInstallAtMaintenanceTime|2|Auto-install at maintenance time.|
|autoInstallAndRebootAtMaintenanceTime|3|Auto-install and reboot at maintenance time.|
|autoInstallAndRebootAtScheduledTime|4|Auto-install and reboot at scheduled time.|
|autoInstallAndRebootWithoutEndUserControl|5|Auto-install and restart without end-user control|




