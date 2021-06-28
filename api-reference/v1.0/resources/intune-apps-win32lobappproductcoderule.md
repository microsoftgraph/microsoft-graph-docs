---
title: "win32LobAppProductCodeRule resource type"
description: "A complex type to store the product code and version rule data for a Win32 LOB app. This rule is not supported as a requirement rule."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppProductCodeRule resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the product code and version rule data for a Win32 LOB app. This rule is not supported as a requirement rule.


Inherits from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleType|[win32LobAppRuleType](../resources/intune-apps-win32lobappruletype.md)|The rule type indicating the purpose of the rule. Inherited from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|productCode|String|The product code of the app.|
|productVersionOperator|[win32LobAppRuleOperator](../resources/intune-apps-win32lobappruleoperator.md)|The product version comparison operator. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|productVersion|String|The product version comparison value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppProductCodeRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppProductCodeRule",
  "ruleType": "String",
  "productCode": "String",
  "productVersionOperator": "String",
  "productVersion": "String"
}
```




