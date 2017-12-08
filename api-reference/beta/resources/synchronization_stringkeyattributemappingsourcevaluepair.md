# stringKeyAttributeMappingSourceValuePair resource type

Key value pair where key is a string and value is [attributeMappingSource](synchronization_attributemappingsource.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Name of the parameter|
|value|[attributeMappingSource](synchronization_attributemappingsource.md).||

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stringKeyAttributeMappingSourceValuePair"
}-->

```json
{
  "key": "String",
  "value": {"@odata.type": "microsoft.graph.attributeMappingSource"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "stringKeyAttributeMappingSourceValuePair resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->