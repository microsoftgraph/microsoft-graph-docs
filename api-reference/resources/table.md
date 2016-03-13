# table resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get table](../api/table_get.md) | [table](table.md) |Read properties and relationships of table object.|
|[Create tableColumn](../api/table_post_columns.md) |[tableColumn](tablecolumn.md)| Create a new tableColumn by posting to the columns collection.|
|[List columns](../api/table_list_columns.md) |[tableColumn](tablecolumn.md) collection| Get a tableColumn object collection.|
|[Create range](../api/table_post_converttorangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the convertToRangeFunctionReturnSet collection.|
|[List convertToRangeFunctionReturnSet](../api/table_list_converttorangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/table_post_databodyrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the dataBodyRangeFunctionReturnSet collection.|
|[List dataBodyRangeFunctionReturnSet](../api/table_list_databodyrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/table_post_headerrowrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the headerRowRangeFunctionReturnSet collection.|
|[List headerRowRangeFunctionReturnSet](../api/table_list_headerrowrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/table_post_rangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rangeFunctionReturnSet collection.|
|[List rangeFunctionReturnSet](../api/table_list_rangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create tableRow](../api/table_post_rows.md) |[tableRow](tablerow.md)| Create a new tableRow by posting to the rows collection.|
|[List rows](../api/table_list_rows.md) |[tableRow](tablerow.md) collection| Get a tableRow object collection.|
|[Create range](../api/table_post_totalrowrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the totalRowRangeFunctionReturnSet collection.|
|[List totalRowRangeFunctionReturnSet](../api/table_list_totalrowrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/table_update.md) | [table](table.md)	|Update table object. |
|[Delete](../api/table_delete.md) | None |Delete table object. |
|[Add](../api/table_add.md)|[table](table.md)||
|[Clearfilters](../api/table_clearfilters.md)|None||
|[Converttorange](../api/table_converttorange.md)|[range](range.md)||
|[Count](../api/table_count.md)|int32||
|[Databodyrange](../api/table_databodyrange.md)|[range](range.md)||
|[Headerrowrange](../api/table_headerrowrange.md)|[range](range.md)||
|[Itemat](../api/table_itemat.md)|[table](table.md)||
|[Range](../api/table_range.md)|[range](range.md)||
|[Reapplyfilters](../api/table_reapplyfilters.md)|None||
|[Totalrowrange](../api/table_totalrowrange.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|
|name|string||
|showHeaders|boolean||
|showTotals|boolean||
|style|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|columns|[tableColumn](tablecolumn.md) collection| Read-only. Nullable.|
|convertToRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|dataBodyRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|headerRowRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|rangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|rows|[tableRow](tablerow.md) collection| Read-only. Nullable.|
|sort|[tableSort](tablesort.md)| Read-only. Nullable.|
|totalRowRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|worksheet|[worksheet](worksheet.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.table"
}-->

```json
{
  "id": "string (identifier)",
  "name": "string",
  "showHeaders": true,
  "showTotals": true,
  "style": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "table resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->