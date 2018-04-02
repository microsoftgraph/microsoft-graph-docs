# itemBody resource type

Represents properties of the body of an item, such as a message, event or group post.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|String|The content of the item.|
|contentType|bodyType|The type of the content. Possible values are `Text` and `HTML`.|

### bodyType values
| Value
|:---------
| text
| html

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemBody"
}-->

```json
{
  "content": "string",
  "contentType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemBody resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
