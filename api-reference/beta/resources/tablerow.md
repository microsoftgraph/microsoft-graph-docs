# TableRow resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a row in a table.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get TableRow](../api/tablerow_get.md) | [TableRow](tablerow.md) |Read properties and relationships of tableRow object.|
|[Update](../api/tablerow_update.md) | [TableRow](tablerow.md)	|Update TableRow object. |
|[Range](../api/tablerow_range.md)|[Range](range.md)|Returns the range object associated with the entire row.|
|[Delete](../api/tablerow_delete.md)|None|Deletes the row from the table.|
|[List](../api/tablerow_list.md) | [TableRow](tablerow.md) collection |Get tableRow object collection. |
|[Itemat](../api/tablerowcollection_itemat.md)|[TableRow](tablerow.md)|Gets a row based on its position in the collection.|
|[Add](../api/tablerowcollection_add.md)|[TableRow](tablerow.md)|Adds a new row to the table.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.|
|values|json|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tableRow"
}-->

```json
{
  "index": 1024,
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->