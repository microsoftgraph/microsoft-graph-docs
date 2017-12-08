# attributeMappingParameterSchema resource type

Describes a single parameter used in an [attributeMappingFunctionSchema](../resources/synchronization_attributemappingfunctionschema.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|allowMultipleOccurrences    |Boolean                   |Given parameter can be provided multiple times (i.e. multiple input strings into Concatenate(string,string,...) function). |
|name                        |String                    |Parameter name. |
|required                    |Boolean                   |`true` if paramer is required, `false` otherwise. |
|type                        |String                    |Possible values are: `Boolean`, `Binary`, `Reference`, `Integer`, `String`. Default is `String`|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingParameterSchema"
}-->

```json
{
  "allowMultipleOccurrences": "Boolean",
  "name": "String",
  "required": "Boolean",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attributeMappingParameterSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->