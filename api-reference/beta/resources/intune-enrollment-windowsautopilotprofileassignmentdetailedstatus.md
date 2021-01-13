---
title: "windowsAutopilotProfileAssignmentDetailedStatus enum type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsAutopilotProfileAssignmentDetailedStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No assignment detailed status|
|hardwareRequirementsNotMet|1|Hardware requirements are not met. This can happen if a self-deploying AutoPilot Profile is assigned to a device without TPM 2.0.|
|surfaceHubProfileNotSupported|2|This can happen if a SurfaceHub AutoPilot Profile is assigned to a device that is not SurfaceHub.|
|holoLensProfileNotSupported|3|This can happen if a HoloLens AutoPilot Profile is assigned to a device that is not HoloLens.|
|windowsPcProfileNotSupported|4|This can happen if a WindowsPc AutoPilot Profile is assigned to a device that is not WindowsPc.|




