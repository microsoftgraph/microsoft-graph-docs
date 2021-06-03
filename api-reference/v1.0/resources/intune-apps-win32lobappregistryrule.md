---
title: "win32LobAppRegistryRule resource type"
description: "A complex type to store registry rule data for a Win32 LOB app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppRegistryRule resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store registry rule data for a Win32 LOB app.


Inherits from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleType|[win32LobAppRuleType](../resources/intune-apps-win32lobappruletype.md)|The rule type indicating the purpose of the rule. Inherited from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|check32BitOn64System|Boolean|A value indicating whether to search the 32-bit registry on 64-bit systems.|
|keyPath|String|The full path of the registry entry containing the value to detect.|
|valueName|String|The name of the registry value to detect.|
|operationType|[win32LobAppRegistryRuleOperationType](../resources/intune-apps-win32lobappregistryruleoperationtype.md)|The registry operation type. Possible values are: `notConfigured`, `exists`, `doesNotExist`, `string`, `integer`, `version`.|
|operator|[win32LobAppRuleOperator](../resources/intune-apps-win32lobappruleoperator.md)|The operator for registry detection. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|comparisonValue|String|The registry comparison value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppRegistryRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppRegistryRule",
  "ruleType": "String",
  "check32BitOn64System": true,
  "keyPath": "String",
  "valueName": "String",
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```




