---
title: "deviceHealthScriptParameter resource type"
description: "Base properties of the script parameter."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceHealthScriptParameter resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Base properties of the script parameter.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the param|
|description|String|The description of the param|
|isRequired|Boolean|Whether the param is required|
|applyDefaultValueWhenNotAssigned|Boolean|Whether Apply DefaultValue When Not Assigned|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptParameter",
  "name": "String",
  "description": "String",
  "isRequired": true,
  "applyDefaultValueWhenNotAssigned": true
}
```




