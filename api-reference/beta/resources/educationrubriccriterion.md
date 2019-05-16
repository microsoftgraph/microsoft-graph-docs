---
title: "educationRubricCriterion resource type"
description: "A criterion in an educationRubric at the intersection of an educationRubricLevel and an educationRubricQuality."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationRubricCriterion resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A criterion in an [educationRubric](educationrubric.md) at the intersection of an [educationRubricLevel](educationrubriclevel.md) and an [educationRubricQuality](educationrubricquality.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|[itemBody](itembody.md)|Description of the criterion.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationRubricCriterion"
}-->

```json
{
  "description": {"@odata.type": "microsoft.graph.itembody"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRubricCriterion resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
