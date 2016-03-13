# rangeFormat resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get rangeFormat](../api/rangeformat_get.md) | [rangeFormat](rangeformat.md) |Read properties and relationships of rangeFormat object.|
|[Create rangeBorder](../api/rangeformat_post_borders.md) |[rangeBorder](rangeborder.md)| Create a new rangeBorder by posting to the borders collection.|
|[List borders](../api/rangeformat_list_borders.md) |[rangeBorder](rangeborder.md) collection| Get a rangeBorder object collection.|
|[Update](../api/rangeformat_update.md) | [rangeFormat](rangeformat.md)	|Update rangeFormat object. |
|[Delete](../api/rangeformat_delete.md) | None |Delete rangeFormat object. |
|[Autofitcolumns](../api/rangeformat_autofitcolumns.md)|None||
|[Autofitrows](../api/rangeformat_autofitrows.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|columnWidth|double||
|horizontalAlignment|string||
|rowHeight|double||
|verticalAlignment|string||
|wrapText|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|borders|[rangeBorder](rangeborder.md) collection| Read-only. Nullable.|
|fill|[rangeFill](rangefill.md)| Read-only. Nullable.|
|font|[rangeFont](rangefont.md)| Read-only. Nullable.|
|protection|[formatProtection](formatprotection.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangeformat"
}-->

```json
{
  "columnWidth": 1024,
  "horizontalAlignment": "string",
  "rowHeight": 1024,
  "verticalAlignment": "string",
  "wrapText": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rangeFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->