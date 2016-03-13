# filter resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get filter](../api/filter_get.md) | [filter](filter.md) |Read properties and relationships of filter object.|
|[Update](../api/filter_update.md) | [filter](filter.md)	|Update filter object. |
|[Delete](../api/filter_delete.md) | None |Delete filter object. |
|[Apply](../api/filter_apply.md)|None||
|[Clear](../api/filter_clear.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|criteria|[filterCriteria](filtercriteria.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filter"
}-->

```json
{
  "criteria": {"@odata.type": "microsoft.graph.filterCriteria"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "filter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->