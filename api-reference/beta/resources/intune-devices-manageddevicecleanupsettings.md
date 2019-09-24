---
title: "managedDeviceCleanupSettings resource type"
description: "Define the rule when the admin wants the devices to be cleaned up."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# managedDeviceCleanupSettings resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Define the rule when the admin wants the devices to be cleaned up.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceInactivityBeforeRetirementInDays|String|Number of days when the device has not contacted Intune.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceCleanupSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceCleanupSettings",
  "deviceInactivityBeforeRetirementInDays": "String"
}
```



