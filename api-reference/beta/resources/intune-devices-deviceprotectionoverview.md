---
title: "deviceProtectionOverview resource type"
description: "Hardware information of a given device."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceProtectionOverview resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Hardware information of a given device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalReportedDeviceCount|Int32|Total device count.|
|inactiveThreatAgentDeviceCount|Int32|Device with inactive threat agent count|
|unknownStateThreatAgentDeviceCount|Int32|Device with threat agent state as unknown count.|
|pendingSignatureUpdateDeviceCount|Int32|Device with old signature count.|
|cleanDeviceCount|Int32|Clean device count.|
|pendingFullScanDeviceCount|Int32|Pending full scan device count.|
|pendingRestartDeviceCount|Int32|Pending restart device count.|
|pendingManualStepsDeviceCount|Int32|Pending manual steps device count.|
|pendingOfflineScanDeviceCount|Int32|Pending offline scan device count.|
|criticalFailuresDeviceCount|Int32|Critical failures device count.|
|pendingQuickScanDeviceCount|Int32|Pending quick scan device count. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceProtectionOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceProtectionOverview",
  "totalReportedDeviceCount": 1024,
  "inactiveThreatAgentDeviceCount": 1024,
  "unknownStateThreatAgentDeviceCount": 1024,
  "pendingSignatureUpdateDeviceCount": 1024,
  "cleanDeviceCount": 1024,
  "pendingFullScanDeviceCount": 1024,
  "pendingRestartDeviceCount": 1024,
  "pendingManualStepsDeviceCount": 1024,
  "pendingOfflineScanDeviceCount": 1024,
  "criticalFailuresDeviceCount": 1024,
  "pendingQuickScanDeviceCount": 1024
}
```




