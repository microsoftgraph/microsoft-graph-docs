# chartTitle resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get chartTitle](../api/charttitle_get.md) | [chartTitle](charttitle.md) |Read properties and relationships of chartTitle object.|
|[Update](../api/charttitle_update.md) | [chartTitle](charttitle.md)	|Update chartTitle object. |
|[Delete](../api/charttitle_delete.md) | None |Delete chartTitle object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|boolean||
|text|string||
|visible|boolean||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[chartTitleFormat](charttitleformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.charttitle"
}-->

```json
{
  "overlay": true,
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chartTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->