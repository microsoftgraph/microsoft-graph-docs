# sortField resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ascending|boolean||
|color|string||
|dataOption|string||
|icon|[icon](icon.md)||
|key|int32||
|sortOn|string||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sortfield"
}-->

```json
{
  "ascending": true,
  "color": "string",
  "dataOption": "string",
  "icon": {"@odata.type": "microsoft.graph.icon"},
  "key": 1024,
  "sortOn": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sortField resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->