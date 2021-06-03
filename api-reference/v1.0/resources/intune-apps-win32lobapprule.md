---
title: "win32LobAppRule resource type"
description: "A base complex type to store the detection or requirement rule data for a Win32 LOB app."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# win32LobAppRule resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A base complex type to store the detection or requirement rule data for a Win32 LOB app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleType|[win32LobAppRuleType](../resources/intune-apps-win32lobappruletype.md)|The rule type indicating the purpose of the rule. Possible values are: `detection`, `requirement`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppRule",
  "ruleType": "String"
}
```




