---
title: "SortField resource type"
description: "Represents a condition in a sorting operation."
localization_priority: Normal
author: "ruoyingl"
ms.prod: ""
doc_type: resourcePageType
---

# SortField resource type

Namespace: microsoft.graph

Represents a condition in a sorting operation.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ascending|boolean|Represents whether the sorting is done in an ascending fashion.|
|color|string|Represents the color that is the target of the condition if the sorting is on font or cell color.|
|dataOption|string|Represents additional sorting options for this field. The possible values are: `Normal`, `TextAsNumber`.|
|key|int|Represents the column (or row, depending on the sort orientation) that the condition is on. Represented as an offset from the first column (or row).|
|sortOn|string|Represents the type of sorting of this condition. The possible values are: `Value`, `CellColor`, `FontColor`, `Icon`.|
|icon|[WorkbookIcon](icon.md)|Represents the icon that is the target of the condition if the sorting is on the cell's icon.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.workbookSortField"
}-->

```json
{
  "ascending": true,
  "color": "string",
  "dataOption": "string",
  "key": 1024,
  "sortOn": "string",
  "icon": { "@odata.type": "microsoft.graph.workbookIcon" }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "SortField resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

