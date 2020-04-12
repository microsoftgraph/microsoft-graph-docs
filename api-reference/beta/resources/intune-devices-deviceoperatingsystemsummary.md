---
title: "deviceOperatingSystemSummary resource type"
description: "Device operating system summary."
author: "davidmu1"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceOperatingSystemSummary resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
|androidDedicatedCount|Int32|Number of dedicated Android devices.|
|androidDeviceAdminCount|Int32|Number of device admin Android devices.|
|androidFullyManagedCount|Int32|Number of fully managed Android devices.|
|androidWorkProfileCount|Int32|Number of work profile Android devices.|
|configMgrDeviceCount|Int32|Number of ConfigMgr managed devices.|

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
  "unknownCount": 1024,
  "androidDedicatedCount": 1024,
  "androidDeviceAdminCount": 1024,
  "androidFullyManagedCount": 1024,
  "androidWorkProfileCount": 1024,
  "configMgrDeviceCount": 1024
}
```



