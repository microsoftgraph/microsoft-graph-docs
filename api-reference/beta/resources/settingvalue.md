---
title: "settingValue resource type"
description: "A setting represented by a name/value pair."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "dkershaw10"
---

# settingValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A setting represented by a name/value pair.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Name of the setting (as defined by the directorySettingTemplate).|
|value|string|Value of the setting.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settingValue"
}-->

```json
{
  "name": "string",
  "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "settingValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


