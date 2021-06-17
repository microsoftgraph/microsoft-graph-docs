---
title: "win32LobAppFileSystemRule resource type"
description: "A complex type to store file or folder rule data for a Win32 LOB app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppFileSystemRule resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store file or folder rule data for a Win32 LOB app.


Inherits from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleType|[win32LobAppRuleType](../resources/intune-apps-win32lobappruletype.md)|The rule type indicating the purpose of the rule. Inherited from [win32LobAppRule](../resources/intune-apps-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|path|String|The file or folder path to look up.|
|fileOrFolderName|String|The file or folder name to look up.|
|check32BitOn64System|Boolean|A value indicating whether to expand environment variables in the 32-bit context on 64-bit systems.|
|operationType|[win32LobAppFileSystemOperationType](../resources/intune-apps-win32lobappfilesystemoperationtype.md)|The file system operation type. Possible values are: `notConfigured`, `exists`, `modifiedDate`, `createdDate`, `version`, `sizeInMB`.|
|operator|[win32LobAppRuleOperator](../resources/intune-apps-win32lobappruleoperator.md)|The operator for file or folder detection. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|comparisonValue|String|The file or folder comparison value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppFileSystemRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppFileSystemRule",
  "ruleType": "String",
  "path": "String",
  "fileOrFolderName": "String",
  "check32BitOn64System": true,
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```




