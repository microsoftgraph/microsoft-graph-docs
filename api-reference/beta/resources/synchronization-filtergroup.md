---
title: "filterGroup resource type"
description: "Defines a set of clauses that an object must satisfy to be considered in scope."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# filterGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a set of clauses that an object must satisfy to be considered in scope. An object is considered in scope for the group (the group is evaluated to `true`) only if all the clauses of the group are evaluated to `true`.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|clauses|[filterClause](synchronization-filterclause.md) collection|Filter clauses (conditions) of this group. All clauses in a group must be satisfied in order for the filter group to evaluate to `true`.|
|name|String|Human-readable name of the filter group.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterGroup"
}-->

```json
{
  "clauses": [{"@odata.type": "microsoft.graph.filterClause"}],
  "name": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "filterGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


