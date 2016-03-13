# worksheet resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get worksheet](../api/worksheet_get.md) | [worksheet](worksheet.md) |Read properties and relationships of worksheet object.|
|[Create range](../api/worksheet_post_cellfunctionreturnset.md) |[range](range.md)| Create a new range by posting to the cellFunctionReturnSet collection.|
|[List cellFunctionReturnSet](../api/worksheet_list_cellfunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create chart](../api/worksheet_post_charts.md) |[chart](chart.md)| Create a new chart by posting to the charts collection.|
|[List charts](../api/worksheet_list_charts.md) |[chart](chart.md) collection| Get a chart object collection.|
|[Create range](../api/worksheet_post_rangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rangeFunctionReturnSet collection.|
|[List rangeFunctionReturnSet](../api/worksheet_list_rangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Create table](../api/worksheet_post_tables.md) |[table](table.md)| Create a new table by posting to the tables collection.|
|[List tables](../api/worksheet_list_tables.md) |[table](table.md) collection| Get a table object collection.|
|[Create range](../api/worksheet_post_usedrangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the usedRangeFunctionReturnSet collection.|
|[List usedRangeFunctionReturnSet](../api/worksheet_list_usedrangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/worksheet_update.md) | [worksheet](worksheet.md)	|Update worksheet object. |
|[Delete](../api/worksheet_delete.md) | None |Delete worksheet object. |
|[Add](../api/worksheet_add.md)|[worksheet](worksheet.md)||
|[Cell](../api/worksheet_cell.md)|[range](range.md)||
|[Range](../api/worksheet_range.md)|[range](range.md)||
|[Usedrange](../api/worksheet_usedrange.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|
|name|string||
|position|int32||
|visibility|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|cellFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|charts|[chart](chart.md) collection| Read-only. Nullable.|
|protection|[worksheetProtection](worksheetprotection.md)| Read-only. Nullable.|
|rangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|
|tables|[table](table.md) collection| Read-only. Nullable.|
|usedRangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.worksheet"
}-->

```json
{
  "id": "string (identifier)",
  "name": "string",
  "position": 1024,
  "visibility": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "worksheet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->