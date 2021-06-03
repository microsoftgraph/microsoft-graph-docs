---
title: "importedWindowsAutopilotDeviceIdentityState resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# importedWindowsAutopilotDeviceIdentityState resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceImportStatus|[importedWindowsAutopilotDeviceIdentityImportStatus](../resources/intune-enrollment-importedwindowsautopilotdeviceidentityimportstatus.md)|Device status reported by Device Directory Service(DDS). Possible values are: `unknown`, `pending`, `partial`, `complete`, `error`.|
|deviceRegistrationId|String|Device Registration ID for successfully added device reported by Device Directory Service(DDS).|
|deviceErrorCode|Int32|Device error code reported by Device Directory Service(DDS).|
|deviceErrorName|String|Device error name reported by Device Directory Service(DDS).|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentityState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
  "deviceImportStatus": "String",
  "deviceRegistrationId": "String",
  "deviceErrorCode": 1024,
  "deviceErrorName": "String"
}
```




