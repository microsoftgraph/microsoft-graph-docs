---
title: "deviceHealthScriptRemediationSummary resource type"
description: "The number of device health scripts deployed and the number of devices the scripts remediated."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptRemediationSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The number of device health scripts deployed and the number of devices the scripts remediated.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|scriptCount|Int32|The number of device health scripts deployed.|
|remediatedDeviceCount|Int32|The number of devices remediated by device health scripts.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptRemediationSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRemediationSummary",
  "scriptCount": 1024,
  "remediatedDeviceCount": 1024
}
```




