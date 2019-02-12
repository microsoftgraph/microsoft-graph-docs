---
title: "managedAppDiagnosticStatus resource type"
description: "Represents diagnostics status."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# managedAppDiagnosticStatus resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents diagnostics status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|validationName|String|The validation friendly name|
|state|String|The state of the operation|
|mitigationInstruction|String|Instruction on how to mitigate a failed validation|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedAppDiagnosticStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppDiagnosticStatus",
  "validationName": "String",
  "state": "String",
  "mitigationInstruction": "String"
}
```




