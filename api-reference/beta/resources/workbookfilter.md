---
title: "workbookFilter resource type"
description: "Manages the filtering of a table's column."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "excel"
author: "ruoyingl"
---

# workbookFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Manages the filtering of a table's column.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Apply](../api/filter-apply.md)|None|Apply the given filter criteria on the given column.|
|[Clear](../api/filter-clear.md)|None|Clear the filter on the given column.|

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|criteria|[workbookFilterCriteria](workbookfiltercriteria.md)|The currently applied filter on the given column. Read-only.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
     "legacyId"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookFilter"
}-->

```json
{
    "criteria": {"@odata.type": "microsoft.graph.workbookFilterCriteria"}
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Filter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


