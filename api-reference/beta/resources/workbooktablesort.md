---
title: "workbookTableSort resource type"
description: "Manages sorting operations on Table objects."
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookTableSort resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Manages sorting operations on Table objects.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableSort](../api/tablesort-get.md) | [workbookTableSort](workbooktablesort.md) |Read properties and relationships of tableSort object.|
|[Apply](../api/tablesort-apply.md)|None|Perform a sort operation.|
|[Clear](../api/tablesort-clear.md)|None|Clears the sorting that is currently on the table. While this doesn't modify the table's ordering, it clears the state of the header buttons.|
|[Reapply](../api/tablesort-reapply.md)|None|Reapplies the current sorting parameters to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|matchCase|boolean|Represents whether the casing impacted the last sort of the table. Read-only.|
|method|string|Represents Chinese character ordering method last used to sort the table. Possible values are: `PinYin`, `StrokeCount`. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fields|[workbookSortField](workbooksortfield.md)|Represents the current conditions used to last sort the table. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
 
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookTableSort"
}-->

```json
{
  "id": "string",
  "matchCase": true,
  "method": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "TableSort resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


