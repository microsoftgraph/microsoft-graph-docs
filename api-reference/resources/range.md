# range resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get range](../api/range_get.md) | [range](range.md) |Read properties and relationships of range object.|
|[Create range](../api/range_post_boundingrectfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the boundingRectFunctionReturnSet collection.|
|[List boundingRectFunctionReturnSet](../api/range_list_boundingrectfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_cellfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the cellFunctionReturnSet collection.|
|[List cellFunctionReturnSet](../api/range_list_cellfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_columnfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the columnFunctionReturnSet collection.|
|[List columnFunctionReturnSet](../api/range_list_columnfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_entirecolumnfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the entireColumnFunctionReturnSet collection.|
|[List entireColumnFunctionReturnSet](../api/range_list_entirecolumnfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_entirerowfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the entireRowFunctionReturnSet collection.|
|[List entireRowFunctionReturnSet](../api/range_list_entirerowfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_insertfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the insertFunctionReturnSet collection.|
|[List insertFunctionReturnSet](../api/range_list_insertfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_intersectionfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the intersectionFunctionReturnSet collection.|
|[List intersectionFunctionReturnSet](../api/range_list_intersectionfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_lastcellfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the lastCellFunctionReturnSet collection.|
|[List lastCellFunctionReturnSet](../api/range_list_lastcellfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_lastcolumnfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the lastColumnFunctionReturnSet collection.|
|[List lastColumnFunctionReturnSet](../api/range_list_lastcolumnfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_lastrowfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the lastRowFunctionReturnSet collection.|
|[List lastRowFunctionReturnSet](../api/range_list_lastrowfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_offsetrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the offsetRangeFunctionReturnSet collection.|
|[List offsetRangeFunctionReturnSet](../api/range_list_offsetrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_rowfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rowFunctionReturnSet collection.|
|[List rowFunctionReturnSet](../api/range_list_rowfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create range](../api/range_post_usedrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the usedRangeFunctionReturnSet collection.|
|[List usedRangeFunctionReturnSet](../api/range_list_usedrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/range_update.md) | [range](range.md)	|Update range object. |
|[Delete](../api/range_delete.md) | None |Delete range object. |
|[Boundingrect](../api/range_boundingrect.md)|[range](range.md)||
|[Cell](../api/range_cell.md)|[range](range.md)||
|[Clear](../api/range_clear.md)|None||
|[Column](../api/range_column.md)|[range](range.md)||
|[Delete](../api/range_delete.md)|None||
|[Entirecolumn](../api/range_entirecolumn.md)|[range](range.md)||
|[Entirerow](../api/range_entirerow.md)|[range](range.md)||
|[Insert](../api/range_insert.md)|[range](range.md)||
|[Intersection](../api/range_intersection.md)|[range](range.md)||
|[Lastcell](../api/range_lastcell.md)|[range](range.md)||
|[Lastcolumn](../api/range_lastcolumn.md)|[range](range.md)||
|[Lastrow](../api/range_lastrow.md)|[range](range.md)||
|[Merge](../api/range_merge.md)|None||
|[Offsetrange](../api/range_offsetrange.md)|[range](range.md)||
|[Row](../api/range_row.md)|[range](range.md)||
|[Unmerge](../api/range_unmerge.md)|None||
|[Usedrange](../api/range_usedrange.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|string||
|addressLocal|string||
|cellCount|int32||
|columnCount|int32||
|columnHidden|boolean||
|columnIndex|int32||
|formulas|json||
|formulasLocal|json||
|formulasR1C1|json||
|hidden|boolean||
|numberFormat|json||
|rowCount|int32||
|rowHidden|boolean||
|rowIndex|int32||
|text|json||
|valueTypes|json||
|values|json||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|boundingRectFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|cellFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|columnFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|entireColumnFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|entireRowFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|format|[rangeFormat](rangeformat.md)| Read-only. Nullable.|
|insertFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|intersectionFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|lastCellFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|lastColumnFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|lastRowFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|offsetRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|rowFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|sort|[rangeSort](rangesort.md)| Read-only. Nullable.|
|usedRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|worksheet|[worksheet](worksheet.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.range"
}-->

```json
{
  "address": "string",
  "addressLocal": "string",
  "cellCount": 1024,
  "columnCount": 1024,
  "columnHidden": true,
  "columnIndex": 1024,
  "formulas": "json",
  "formulasLocal": "json",
  "formulasR1C1": "json",
  "hidden": true,
  "numberFormat": "json",
  "rowCount": 1024,
  "rowHidden": true,
  "rowIndex": 1024,
  "text": "json",
  "valueTypes": "json",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "range resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->