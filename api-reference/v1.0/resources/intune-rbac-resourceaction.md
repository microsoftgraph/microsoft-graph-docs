---
title: "resourceAction resource type"
description: "Set of allowed and not allowed actions for a resource."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# resourceAction resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Set of allowed and not allowed actions for a resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedResourceActions|String collection|Allowed Actions|
|notAllowedResourceActions|String collection|Not Allowed Actions.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceAction",
  "allowedResourceActions": [
    "String"
  ],
  "notAllowedResourceActions": [
    "String"
  ]
}
```




