---
title: "win32LobAppReturnCode resource type"
description: "Contains return code properties for a Win32 App"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppReturnCode resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains return code properties for a Win32 App

## Properties
|Property|Type|Description|
|:---|:---|:---|
|returnCode|Int32|Return code.|
|type|[win32LobAppReturnCodeType](../resources/intune-apps-win32lobappreturncodetype.md)|The type of return code. Possible values are: `failed`, `success`, `softReboot`, `hardReboot`, `retry`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppReturnCode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppReturnCode",
  "returnCode": 1024,
  "type": "String"
}
```




