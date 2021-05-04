---
title: "deletedWindowsAutopilotDeviceState resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deletedWindowsAutopilotDeviceState resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|serialNumber|String|Autopilot Device Serial Number|
|deviceRegistrationId|String|ZTD Device Registration ID .|
|deletionState|[windowsAutopilotDeviceDeletionState](../resources/intune-enrollment-windowsautopilotdevicedeletionstate.md)|Device deletion state. Possible values are: `unknown`, `failed`, `accepted`, `error`.|
|errorMessage|String|Device deletion error message.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deletedWindowsAutopilotDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedWindowsAutopilotDeviceState",
  "serialNumber": "String",
  "deviceRegistrationId": "String",
  "deletionState": "String",
  "errorMessage": "String"
}
```




