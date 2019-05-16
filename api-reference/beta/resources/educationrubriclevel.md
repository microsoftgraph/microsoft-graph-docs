---
title: "educationRubricLevel resource type"
description: "A level within a grading educationRubric."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationRubricLevel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A level within a grading [educationRubric](educationrubric.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|levelId|String|Unique identifier for the level.|
|displayName|String|Name of level.|
|description|[itemBody](itembody.md)|Description of rubric.|
|grading|[foo](foo.md)|The grading type of this rubric.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricLevel"
}-->

```json
{
  "levelId": "String (identifier)",
  "displayName": "String",
  "description": {"@odata.type": "microsoft.graph.itembody"},
  "grading": {"@odata.type": "microsoft.graph..."},
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubricLevel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
