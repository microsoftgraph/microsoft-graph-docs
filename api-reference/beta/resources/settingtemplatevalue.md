---
title: "settingTemplateValue resource type"
description: "Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "dkershaw10"
---

# settingTemplateValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual template setting definition, including the default value for the setting, if the setting is not instantiated.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|defaultValue|string|Default value for the setting. Read-only.|
|description|string|Description of the setting. Read-only.|
|name|string|Name of the setting. Read-only.|
|type|string|Type of the setting. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.settingTemplateValue"
}-->

```json
{
  "defaultValue": "string",
  "description": "string",
  "name": "string",
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "settingTemplateValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


