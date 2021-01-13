---
title: "osVersionCount resource type"
description: "Count of devices with malware for each OS version"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# osVersionCount resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Count of devices with malware for each OS version

## Properties
|Property|Type|Description|
|:---|:---|:---|
|osVersion|String|OS version|
|deviceCount|Int32|Count of devices with malware for the OS version|
|lastUpdateDateTime|DateTimeOffset|The Timestamp of the last update for the device count in UTC|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.osVersionCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.osVersionCount",
  "osVersion": "String",
  "deviceCount": 1024,
  "lastUpdateDateTime": "String (timestamp)"
}
```




