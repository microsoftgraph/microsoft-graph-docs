---
title: "loggedOnUser resource type"
description: "Logged On User"
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# loggedOnUser resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Logged On User
## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|User id|
|lastLogOnDateTime|DateTimeOffset|Date time when user logs on|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.loggedOnUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loggedOnUser",
  "userId": "String",
  "lastLogOnDateTime": "String (timestamp)"
}
```





