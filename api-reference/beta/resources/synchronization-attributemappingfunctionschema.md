---
title: "attributeMappingFunctionSchema resource type"
description: "Describes a function that can be used in an attribute mapping to transform values during synchronization."
localization_priority: Normal
---

# attributeMappingFunctionSchema resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a function that can be used in an [attribute mapping](synchronization-attributemapping.md) to transform values during synchronization.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/synchronization-synchronizationschema-functions.md) | [attributeMappingFunctionSchema](../resources/synchronization-attributemappingfunctionschema.md) collection|List supported attribute mapping functions.|

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|name                        |String                    |Operator name. |
|parameters                  |[attributeMappingParameterSchema](../resources/synchronization-attributemappingparameterschema.md) collection  |Collection of function parameters.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingFunctionSchema"
}-->

```json
{
  "name": "String (identifier)",
  "parameters": [{"@odata.type": "microsoft.graph.attributeMappingParameterSchema"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attributeMappingFunctionSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-attributemappingfunctionschema.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
