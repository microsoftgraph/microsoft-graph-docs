﻿# win32LobAppRegistryDetection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains registry properties to detect a Win32 App

Inherits from [win32LobAppDetection](../resources/intune_apps_win32lobappdetection.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|check32BitOn64System|Boolean|A value indicating whether this registry path is for checking 32-bit app on 64-bit system|
|keyPath|String|The registry key path to detect Win32 Line of Business (LoB) app|
|valueName|String|The registry value name|
|detectionType|[win32LobAppRegistryDetectionType](../resources/intune_apps_win32lobappregistrydetectiontype.md)|The registry data detection type. Possible values are: `notConfigured`, `exists`, `doesNotExist`, `string`, `integer`, `version`.|
|operator|[win32LobAppDetectionOperator](../resources/intune_apps_win32lobappdetectionoperator.md)|The operator for registry data detection. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|detectionValue|String|The registry detection value|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppRegistryDetection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppRegistryDetection",
  "check32BitOn64System": true,
  "keyPath": "String",
  "valueName": "String",
  "detectionType": "String",
  "operator": "String",
  "detectionValue": "String"
}
```





