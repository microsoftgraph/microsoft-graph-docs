---
title: "deviceHealthScriptRemediationHistoryData resource type"
description: "The number of devices remediated by a device health script on a given date."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptRemediationHistoryData resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The number of devices remediated by a device health script on a given date.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|date|Date|The date on which devices were remediated by the device health script.|
|remediatedDeviceCount|Int32|The number of devices remediated by the device health script.|
|noIssueDeviceCount|Int32|The number of devices that were found to have no issue by the device health script.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptRemediationHistoryData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRemediationHistoryData",
  "date": "String (Date)",
  "remediatedDeviceCount": 1024,
  "noIssueDeviceCount": 1024
}
```




