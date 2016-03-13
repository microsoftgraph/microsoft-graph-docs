# tableRow resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get tableRow](../api/tablerow_get.md) | [tableRow](tablerow.md) |Read properties and relationships of tableRow object.|
|[Create range](../api/tablerow_post_rangefunctionreturnset.md) |[range](range.md)| Create a new range by posting to the rangeFunctionReturnSet collection.|
|[List rangeFunctionReturnSet](../api/tablerow_list_rangefunctionreturnset.md) |[range](range.md) collection| Get a range object collection.|
|[Update](../api/tablerow_update.md) | [tableRow](tablerow.md)	|Update tableRow object. |
|[Delete](../api/tablerow_delete.md) | None |Delete tableRow object. |
|[Add](../api/tablerow_add.md)|[tableRow](tablerow.md)||
|[Count](../api/tablerow_count.md)|int32||
|[Itemat](../api/tablerow_itemat.md)|[tableRow](tablerow.md)||
|[Range](../api/tablerow_range.md)|[range](range.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int32||
|values|json||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|rangeFunctionReturnSet|[range](range.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablerow"
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
  "description": "tableRow resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->