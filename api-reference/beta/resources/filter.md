---
title: "Filter resource type"
description: "Manages the filtering of a table's column."
localization_priority: Normal
---

# Filter resource type

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
|criteria|[FilterCriteria](filtercriteria.md)|The currently applied filter on the given column. Read-only.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Filter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/filter.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
