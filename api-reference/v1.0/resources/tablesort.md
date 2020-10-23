---
title: "TableSort resource type"
description: "Manages sorting operations on Table objects."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# TableSort resource type

Namespace: microsoft.graph

Manages sorting operations on Table objects.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableSort](../api/tablesort-get.md) | [WorkbookTableSort](tablesort.md) |Read properties and relationships of tableSort object.|
|[Apply](../api/tablesort-apply.md)|None|Perform a sort operation.|
|[Clear](../api/tablesort-clear.md)|None|Clears the sorting that is currently on the table. While this doesn't modify the table's ordering, it clears the state of the header buttons.|
|[Reapply](../api/tablesort-reapply.md)|None|Reapplies the current sorting parameters to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fields|[WorkbookSortField](sortfield.md) collection|Represents the current conditions used to last sort the table. Read-only.|
|matchCase|boolean|Represents whether the casing impacted the last sort of the table. Read-only.|
|method|string|Represents Chinese character ordering method last used to sort the table. The possible values are: `PinYin`, `StrokeCount`. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookTableSort"
}-->

```json
{
  "matchCase": true,
  "method": "string",
  "fields": [{ "@odata.type": "microsoft.graph.workbookSortField" }]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableSort resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

