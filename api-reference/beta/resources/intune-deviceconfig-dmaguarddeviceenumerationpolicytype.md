---
title: "dmaGuardDeviceEnumerationPolicyType enum type"
description: "Possible values of the DmaGuardDeviceEnumerationPolicy."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# dmaGuardDeviceEnumerationPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the DmaGuardDeviceEnumerationPolicy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Default value. Devices with DMA remapping incompatible drivers will only be enumerated after the user unlocks the screen.|
|blockAll|1|Devices with DMA remapping incompatible drivers will never be allowed to start and perform DMA at any time.|
|allowAll|2|All external DMA capable PCIe devices will be enumerated at any time.|




