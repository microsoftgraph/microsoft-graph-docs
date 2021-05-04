---
title: "deviceHealthScriptRunSummary resource type"
description: "Contains properties for the run summary of a device management script."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptRunSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the run summary of a device management script.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceHealthScriptRunSummary](../api/intune-devices-devicehealthscriptrunsummary-get.md)|[deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md)|Read properties and relationships of the [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md) object.|
|[Update deviceHealthScriptRunSummary](../api/intune-devices-devicehealthscriptrunsummary-update.md)|[deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md)|Update the properties of a [deviceHealthScriptRunSummary](../resources/intune-devices-devicehealthscriptrunsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device health script run summary entity. This property is read-only.|
|noIssueDetectedDeviceCount|Int32|Number of devices for which the detection script did not find an issue and the device is healthy|
|issueDetectedDeviceCount|Int32|Number of devices for which the detection script found an issue|
|detectionScriptErrorDeviceCount|Int32|Number of devices on which the detection script execution encountered an error and did not complete|
|detectionScriptPendingDeviceCount|Int32|Number of devices which have not yet run the latest version of the device health script|
|issueRemediatedDeviceCount|Int32|Number of devices for which the remediation script was able to resolve the detected issue|
|remediationSkippedDeviceCount|Int32|Number of devices for which remediation was skipped|
|issueReoccurredDeviceCount|Int32|Number of devices for which the remediation script executed successfully but failed to resolve the detected issue|
|remediationScriptErrorDeviceCount|Int32|Number of devices for which the remediation script execution encountered an error and did not complete|
|lastScriptRunDateTime|DateTimeOffset|Last run time for the script across all devices|
|issueRemediatedCumulativeDeviceCount|Int32|Number of devices that were remediated over the last 30 days|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceHealthScriptRunSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRunSummary",
  "id": "String (identifier)",
  "noIssueDetectedDeviceCount": 1024,
  "issueDetectedDeviceCount": 1024,
  "detectionScriptErrorDeviceCount": 1024,
  "detectionScriptPendingDeviceCount": 1024,
  "issueRemediatedDeviceCount": 1024,
  "remediationSkippedDeviceCount": 1024,
  "issueReoccurredDeviceCount": 1024,
  "remediationScriptErrorDeviceCount": 1024,
  "lastScriptRunDateTime": "String (timestamp)",
  "issueRemediatedCumulativeDeviceCount": 1024
}
```




