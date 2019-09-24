---
title: "deviceHealthScriptComplianceRule resource type"
description: "Not yet documented"
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# deviceHealthScriptComplianceRule resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionType|[deviceHealthScriptDetectionType](../resources/intune-devices-devicehealthscriptdetectiontype.md)|Not yet documented. Possible values are: `notConfigured`, `string`.|
|operator|[deviceHealthScriptComplianceRuleOperator](../resources/intune-devices-devicehealthscriptcomplianceruleoperator.md)|Not yet documented. Possible values are: `notConfigured`, `equal`, `notEqual`.|
|detectionValue|String|Not yet documented|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptComplianceRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptComplianceRule",
  "detectionType": "String",
  "operator": "String",
  "detectionValue": "String"
}
```



