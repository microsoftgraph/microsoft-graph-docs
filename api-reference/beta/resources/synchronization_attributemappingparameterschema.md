# attributeMappingParameterSchema resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Describes a single parameter used in an [attributeMappingFunctionSchema](../resources/synchronization_attributemappingfunctionschema.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|allowMultipleOccurrences    |Boolean                   |The given parameter can be provided multiple times (for example, multiple input strings in the `Concatenate(string,string,...)` function). |
|name                        |String                    |Parameter name. |
|required                    |Boolean                   |`true` if the parameter is required; otherwise `false`. |
|type                        |String                    |Possible values are: `Boolean`, `Binary`, `Reference`, `Integer`, `String`. Default is `String`.|

## JSON representation

The following is a JSON representation of the resource.

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