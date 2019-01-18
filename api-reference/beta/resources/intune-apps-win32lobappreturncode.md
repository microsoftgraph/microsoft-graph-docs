---
title: "win32LobAppReturnCode resource type"
description: "Contains return code properties for a Win32 App"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# win32LobAppReturnCode resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

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





