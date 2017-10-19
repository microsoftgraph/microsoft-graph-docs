# TableSort resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Manages sorting operations on Table objects.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableSort](../api/tablesort_get.md) | [TableSort](tablesort.md) |Read properties and relationships of tableSort object.|
|[Apply](../api/tablesort_apply.md)|None|Perform a sort operation.|
|[Clear](../api/tablesort_clear.md)|None|Clears the sorting that is currently on the table. While this doesn't modify the table's ordering, it clears the state of the header buttons.|
|[Reapply](../api/tablesort_reapply.md)|None|Reapplies the current sorting parameters to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|matchCase|boolean|Represents whether the casing impacted the last sort of the table. Read-only.|
|method|string|Represents Chinese character ordering method last used to sort the table. Possible values are: `PinYin`, `StrokeCount`. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fields|[SortField](sortfield.md)|Represents the current conditions used to last sort the table. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tableSort"
}-->

```json
{
  "matchCase": true,
  "method": "string"
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