---
title: "deviceOperatingSystemSummary resource type"
description: "Device operating system summary."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceOperatingSystemSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device operating system summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|androidCount|Int32|Number of android device count.|
|iosCount|Int32|Number of iOS device count.|
|macOSCount|Int32|Number of Mac OS X device count.|
|windowsMobileCount|Int32|Number of Windows mobile device count.|
|windowsCount|Int32|Number of Windows device count.|
|unknownCount|Int32|Number of unknown device count.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceOperatingSystemSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceOperatingSystemSummary",
  "androidCount": 1024,
  "iosCount": 1024,
  "macOSCount": 1024,
  "windowsMobileCount": 1024,
  "windowsCount": 1024,
  "unknownCount": 1024
}
```









