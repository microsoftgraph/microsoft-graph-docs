# responseStatus resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|response|String| Possible values are: `none`, `organizer`, `tentativelyAccepted`, `accepted`, `declined`, `notResponded`.|
|time|[dateTimeOffset](datetimeoffset.md)||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.responsestatus"
}-->

```json
{
  "response": "String",
  "time": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "responseStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->