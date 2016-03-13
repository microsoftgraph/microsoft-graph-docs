# filterCriteria resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string||
|criterion1|string||
|criterion2|string||
|dynamicCriteria|string||
|filterOn|string||
|icon|[icon](icon.md)||
|operator|string||
|values|json||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filtercriteria"
}-->

```json
{
  "color": "string",
  "criterion1": "string",
  "criterion2": "string",
  "dynamicCriteria": "string",
  "filterOn": "string",
  "icon": {"@odata.type": "microsoft.graph.icon"},
  "operator": "string",
  "values": "json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "filterCriteria resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->