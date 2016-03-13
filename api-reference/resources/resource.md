# resource resource type

A resource in a OneNote page


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get resource](../api/resource_get.md) | [resource](resource.md) |Read properties and relationships of resource object.|
|[Update](../api/resource_update.md) | [resource](resource.md)	|Update resource object. |
|[Delete](../api/resource_delete.md) | None |Delete resource object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|stream|A stream of the content of this resource.|
|contentUrl|string|A Url to which a GET request can be sent to retrieve this resource.|
|id|string|The unique id of this resource. Read-only.|
|self|string||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resource"
}-->

```json
{
  "content": "stream",
  "contentUrl": "string",
  "id": "string (identifier)",
  "self": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->