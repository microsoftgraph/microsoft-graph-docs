# thumbnailSet resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get thumbnailSet](../api/thumbnailset_get.md) | [thumbnailSet](thumbnailset.md) |Read properties and relationships of thumbnailSet object.|
|[Update](../api/thumbnailset_update.md) | [thumbnailSet](thumbnailset.md)	|Update thumbnailSet object. |
|[Delete](../api/thumbnailset_delete.md) | None |Delete thumbnailSet object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|
|large|[thumbnail](thumbnail.md)||
|medium|[thumbnail](thumbnail.md)||
|small|[thumbnail](thumbnail.md)||
|source|[thumbnail](thumbnail.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.thumbnailset"
}-->

```json
{
  "id": "string (identifier)",
  "large": {"@odata.type": "microsoft.graph.thumbnail"},
  "medium": {"@odata.type": "microsoft.graph.thumbnail"},
  "small": {"@odata.type": "microsoft.graph.thumbnail"},
  "source": {"@odata.type": "microsoft.graph.thumbnail"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "thumbnailSet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->