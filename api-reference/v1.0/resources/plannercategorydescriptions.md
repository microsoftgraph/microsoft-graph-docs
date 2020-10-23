---
title: "plannerCategoryDescriptions resource type"
description: "The **plannerCategoryDescriptions** resource represents the descriptive labels for the categories that have been defined for a plan. It belongs to the plan details object. There can be up to 6 categories defined. "
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerCategoryDescriptions resource type

Namespace: microsoft.graph

The **plannerCategoryDescriptions** resource represents the descriptive labels for the categories that have been defined for a plan. It belongs to the [plan details](plannerplandetails.md) object. There can be up to 6 categories defined. 


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|category1|String|The label associated with Category 1|
|category2|String|The label associated with Category 2|
|category3|String|The label associated with Category 3|
|category4|String|The label associated with Category 4|
|category5|String|The label associated with Category 5|
|category6|String|The label associated with Category 6|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerCategoryDescriptions"
}-->

```json
{
  "category1": "String",
  "category2": "String",
  "category3": "String",
  "category4": "String",
  "category5": "String",
  "category6": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerCategoryDescriptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

