---
title: "win32LobAppFileSystemDetection resource type"
description: "Contains file or folder path to detect a Win32 App"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# win32LobAppFileSystemDetection resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains file or folder path to detect a Win32 App

Inherits from [win32LobAppDetection](../resources/intune-apps-win32lobappdetection.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|path|String|The file or folder path to detect Win32 Line of Business (LoB) app|
|fileOrFolderName|String|The file or folder name to detect Win32 Line of Business (LoB) app|
|check32BitOn64System|Boolean|A value indicating whether this file or folder is for checking 32-bit app on 64-bit system|
|detectionType|[win32LobAppFileSystemDetectionType](../resources/intune-apps-win32lobappfilesystemdetectiontype.md)|The file system detection type. Possible values are: `notConfigured`, `exists`, `modifiedDate`, `createdDate`, `version`, `sizeInMB`.|
|operator|[win32LobAppDetectionOperator](../resources/intune-apps-win32lobappdetectionoperator.md)|The operator for file or fodler detection. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|detectionValue|String|The file or folder detection value|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppFileSystemDetection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppFileSystemDetection",
  "path": "String",
  "fileOrFolderName": "String",
  "check32BitOn64System": true,
  "detectionType": "String",
  "operator": "String",
  "detectionValue": "String"
}
```





