---
title: "windowsDeviceHealthState enum type"
description: "Computer endpoint protection state"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsDeviceHealthState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Computer endpoint protection state

## Members
|Member|Value|Description|
|:---|:---|:---|
|clean|0|Computer is clean and no action is required|
|fullScanPending|1|Computer is in pending full scan state|
|rebootPending|2|Computer is in pending reboot state|
|manualStepsPending|4|Computer is in pending manual steps state|
|offlineScanPending|8|Computer is in pending offline scan state|
|critical|16|Computer is in critical failure state|




