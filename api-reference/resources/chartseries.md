# chartSeries resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartSeries](../api/chartseries_get.md) | [chartSeries](chartseries.md) |Read properties and relationships of chartSeries object.|
|[Create chartPoint](../api/chartseries_post_points.md) |[chartPoint](chartpoint.md)| Create a new chartPoint by posting to the points collection.|
|[List points](../api/chartseries_list_points.md) |[chartPoint](chartpoint.md) collection| Get a chartPoint object collection.|
|[Update](../api/chartseries_update.md) | [chartSeries](chartseries.md)	|Update chartSeries object. |
|[Delete](../api/chartseries_delete.md) | None |Delete chartSeries object. |
|[Count](../api/chartseries_count.md)|int32||
|[Itemat](../api/chartseries_itemat.md)|[chartSeries](chartseries.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartSeriesFormat](chartseriesformat.md)| Read-only. Nullable.|
|points|[chartPoint](chartpoint.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartseries"
}-->

```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartSeries resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->