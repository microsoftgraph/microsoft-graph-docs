---
title: "deviceManagement resource type"
description: "The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-enrollment-devicemanagement-get.md)|[deviceManagement](../resources/intune-enrollment-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-enrollment-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-enrollment-devicemanagement-update.md)|[deviceManagement](../resources/intune-enrollment-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-enrollment-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune-enrollment-importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```




