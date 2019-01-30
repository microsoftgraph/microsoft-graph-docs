---
title: "filterOperatorSchema resource type"
description: "Describes an operator that can be used in a filter."
localization_priority: Normal
---

# filterOperatorSchema resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an operator that can be used in a [filter](synchronization-filter.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|arity                       | microsoft.graph.scopeOperatorType         |Arity of the operator. Possible values are: `Binary`, `Unary`. The default is `Binary`.|
|multivaluedComparisonType   | microsoft.graph.scopeOperatorMultiValuedComparisonType          |Possible values are: `All`, `Any`. Applies only to multivalued attributes. `All` means that all values must satisfy the condition. `Any` means that at least one value has to satisfy the condition. The default is `All`.|
|supportedAttributeTypes     | attributeType collection         |Attribute types supported by the operator. Possible values are: `Boolean`, `Binary`, `Reference`, `Integer`, `String`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterOperatorSchema"
}-->

```json
{
  "arity": "microsoft.graph.scopeOperatorType",
  "multivaluedComparisonType": "microsoft.graph.scopeOperatorMultiValuedComparisonType",  
  "supportedAttributeTypes": ["attributeType"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "filterOperatorSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-filteroperatorschema.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
