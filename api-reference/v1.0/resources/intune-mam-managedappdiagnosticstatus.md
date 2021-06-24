---
title: "managedAppDiagnosticStatus resource type"
description: "Represents diagnostics status."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# managedAppDiagnosticStatus resource type

Namespace: microsoft.graph

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




