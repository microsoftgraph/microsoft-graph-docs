---
title: "deviceComplianceScriptRunSummary resource type"
description: "Contains properties for the run summary of a device management script."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceComplianceScriptRunSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the run summary of a device management script.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceComplianceScriptRunSummary](../api/intune-devices-devicecompliancescriptrunsummary-get.md)|[deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md)|Read properties and relationships of the [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md) object.|
|[Update deviceComplianceScriptRunSummary](../api/intune-devices-devicecompliancescriptrunsummary-update.md)|[deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md)|Update the properties of a [deviceComplianceScriptRunSummary](../resources/intune-devices-devicecompliancescriptrunsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the device compliance script run summary entity. This property is read-only.|
|noIssueDetectedDeviceCount|Int32|Number of devices for which the detection script did not find an issue and the device is healthy. Valid values -2147483648 to 2147483647|
|issueDetectedDeviceCount|Int32|Number of devices for which the detection script found an issue. Valid values -2147483648 to 2147483647|
|detectionScriptErrorDeviceCount|Int32|Number of devices on which the detection script execution encountered an error and did not complete. Valid values -2147483648 to 2147483647|
|detectionScriptPendingDeviceCount|Int32|Number of devices which have not yet run the latest version of the device compliance script. Valid values -2147483648 to 2147483647|
|lastScriptRunDateTime|DateTimeOffset|Last run time for the script across all devices|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceComplianceScriptRunSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceComplianceScriptRunSummary",
  "id": "String (identifier)",
  "noIssueDetectedDeviceCount": 1024,
  "issueDetectedDeviceCount": 1024,
  "detectionScriptErrorDeviceCount": 1024,
  "detectionScriptPendingDeviceCount": 1024,
  "lastScriptRunDateTime": "String (timestamp)"
}
```




