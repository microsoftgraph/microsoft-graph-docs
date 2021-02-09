---
title: "ChartAxisTitleFormat resource type"
description: "Represents the chart axis title formatting."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# ChartAxisTitleFormat resource type

Namespace: microsoft.graph

Represents the chart axis title formatting.


## Methods
None

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|font|[WorkbookChartFont](chartfont.md)|Represents the font attributes, such as font name, font size, color, etc. of chart axis title object. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartAxisTitleFormat"
}-->

```json
{
  "font": {"@odata.type": "microsoft.graph.workbookChartFont"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxisTitleFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

