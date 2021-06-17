---
title: "deviceThreatProtectionLevel enum type"
description: "Device threat protection levels for the Device Threat Protection API."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceThreatProtectionLevel enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device threat protection levels for the Device Threat Protection API.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unavailable|0|Default Value. Do not use.|
|secured|1|Device Threat Level requirement: Secured. This is the most secure level, and represents that no threats were found on the device.|
|low|2|Device Threat Protection level requirement: Low. Low represents a severity of threat that poses minimal risk to the device or device data.|
|medium|3|Device Threat Protection level requirement: Medium. Medium represents a severity of threat that poses moderate risk to the device or device data.|
|high|4|Device Threat Protection level requirement: High. High represents a severity of threat that poses severe risk to the device or device data.|
|notSet|10|Device Threat Protection level requirement: Not Set. Not set represents that there is no requirement for the device to meet a Threat Protection level.|




