---
title: "mimeContent resource type"
description: "Contains properties for a generic mime content."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# mimeContent resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for a generic mime content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|String|Indicates the content mime type.|
|value|Binary|The byte array that contains the actual content.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mimeContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mimeContent",
  "type": "String",
  "value": "binary"
}
```




