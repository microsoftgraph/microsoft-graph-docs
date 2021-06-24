---
title: "win32LobAppPowerShellScriptRule resource type"
description: "A complex type to store the PowerShell script rule data for a Win32 LOB app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppPowerShellScriptRule resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the PowerShell script rule data for a Win32 LOB app.


Inherits from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleType|[win32LobAppRuleType](../resources/intune-apps-win32lobappruletype.md)|The rule type indicating the purpose of the rule. Inherited from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|displayName|String|The display name for the rule. Do not specify this value if the rule is used for detection.|
|enforceSignatureCheck|Boolean|A value indicating whether a signature check is enforced.|
|runAs32Bit|Boolean|A value indicating whether the script should run as 32-bit.|
|runAsAccount|[runAsAccountType](../resources/intune-apps-runasaccounttype.md)|The execution context of the script. Do not specify this value if the rule is used for detection. Script detection rules will run in the same context as the associated app install context. Possible values are: `system`, `user`.|
|scriptContent|String|The base64-encoded script content.|
|operationType|[win32LobAppPowerShellScriptRuleOperationType](../resources/intune-apps-win32lobapppowershellscriptruleoperationtype.md)|The script output comparison operation type. Use NotConfigured (the default value) if the rule is used for detection. Possible values are: `notConfigured`, `string`, `dateTime`, `integer`, `float`, `version`, `boolean`.|
|operator|[win32LobAppRuleOperator](../resources/intune-apps-win32lobappruleoperator.md)|The script output operator. Use NotConfigured (the default value) if the rule is used for detection. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|comparisonValue|String|The script output comparison value. Do not specify a value if the rule is used for detection.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppPowerShellScriptRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppPowerShellScriptRule",
  "ruleType": "String",
  "displayName": "String",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "runAsAccount": "String",
  "scriptContent": "String",
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```




