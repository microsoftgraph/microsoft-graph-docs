---
title: "attributeMappingParameterSchema resource type"
description: "Describes a single parameter used in an attributeMappingFunctionSchema."
localization_priority: Normal
---

# attributeMappingParameterSchema resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a single parameter used in an [attributeMappingFunctionSchema](../resources/synchronization-attributemappingfunctionschema.md).

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
<!--
{
  "type": "#page.annotation",
  "description": "attributeMappingParameterSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-attributemappingparameterschema.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
