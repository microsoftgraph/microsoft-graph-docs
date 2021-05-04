---
title: "plannerAppliedCategories resource type"
description: "Represents the collection of categories (or labels) that have been applied to a task, which is part of the plannerTask object."
localization_priority: Normal
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerAppliedCategories resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the collection of categories (or labels) that have been applied to a task, which is part of the [plannerTask](plannertask.md) object.
Up to 25 categories can be applied to a task. Category descriptions, are part of the [plan details](plannerplandetails.md) object. This is an open type.

## Properties
Properties of an open type can be defined by the client. In this case, the client must provide **category1**, **category2**, **category3**, **category4**, **category5**, and so on up to **category25** as properties with their values being `true` when the corresponding categories are applied on the task. When they do not apply, properties are automatically removed by setting their values to `false`, as shown in the following example.

```json
{
  "category1": true,
  "category3": true,
  "category5": true,
  "category21": true
}
```

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerAppliedCategories"
}-->

```json
{
  "String-value": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerAppliedCategories resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


