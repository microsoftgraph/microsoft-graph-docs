# tableColumn resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get tableColumn](../api/tablecolumn_get.md) | [tableColumn](tablecolumn.md) |Read properties and relationships of tableColumn object.|
|[Create range](../api/tablecolumn_post_databodyrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the dataBodyRangeFunctionReturnSet collection.|
|[List dataBodyRangeFunctionReturnSet](../api/tablecolumn_list_databodyrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/tablecolumn_post_headerrowrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the headerRowRangeFunctionReturnSet collection.|
|[List headerRowRangeFunctionReturnSet](../api/tablecolumn_list_headerrowrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/tablecolumn_post_rangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rangeFunctionReturnSet collection.|
|[List rangeFunctionReturnSet](../api/tablecolumn_list_rangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/tablecolumn_post_totalrowrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the totalRowRangeFunctionReturnSet collection.|
|[List totalRowRangeFunctionReturnSet](../api/tablecolumn_list_totalrowrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/tablecolumn_update.md) | [tableColumn](tablecolumn.md)	|Update tableColumn object. |
|[Delete](../api/tablecolumn_delete.md) | None |Delete tableColumn object. |
|[Add](../api/tablecolumn_add.md)|[tableColumn](tablecolumn.md)||
|[Count](../api/tablecolumn_count.md)|int32||
|[Databodyrange](../api/tablecolumn_databodyrange.md)|[range](range.md)||
|[Headerrowrange](../api/tablecolumn_headerrowrange.md)|[range](range.md)||
|[Itemat](../api/tablecolumn_itemat.md)|[tableColumn](tablecolumn.md)||
|[Range](../api/tablecolumn_range.md)|[range](range.md)||
|[Totalrowrange](../api/tablecolumn_totalrowrange.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|
|index|int32||
|name|string||
|values|json||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|dataBodyRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|filter|[filter](filter.md)| Read-only. Nullable.|
|headerRowRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|rangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|totalRowRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablecolumn"
}-->

```json
{
  "id": "string (identifier)",
  "index": 1024,
  "name": "string",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "tableColumn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->