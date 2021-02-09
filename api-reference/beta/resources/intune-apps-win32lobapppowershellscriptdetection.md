---
title: "win32LobAppPowerShellScriptDetection resource type"
description: "Contains PowerShell script properties to detect a Win32 App"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppPowerShellScriptDetection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains PowerShell script properties to detect a Win32 App


Inherits from [win32LobAppDetection](../resources/intune-apps-win32lobappdetection.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enforceSignatureCheck|Boolean|A value indicating whether signature check is enforced|
|runAs32Bit|Boolean|A value indicating whether this script should run as 32-bit|
|scriptContent|String|The base64 encoded script content to detect Win32 Line of Business (LoB) app|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppPowerShellScriptDetection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppPowerShellScriptDetection",
  "enforceSignatureCheck": true,
  "runAs32Bit": true,
  "scriptContent": "String"
}
```




