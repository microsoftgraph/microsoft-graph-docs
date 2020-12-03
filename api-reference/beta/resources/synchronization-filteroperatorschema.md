---
title: "filterOperatorSchema resource type"
description: "Describes an operator that can be used in a filter."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# filterOperatorSchema resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an operator that can be used in a [filter](synchronization-filter.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|arity                       |String          |Arity of the operator. Possible values are: `Binary`, `Unary`. The default is `Binary`.|
|multivaluedComparisonType   |scopeOperatorMultiValuedComparisonType          |Possible values are: `All`, `Any`. Applies only to multivalued attributes. `All` means that all values must satisfy the condition. `Any` means that at least one value has to satisfy the condition. The default is `All`.|
|name                        |String                     |Operator name. |
|supportedAttributeTypes     |String collection         |Attribute types supported by the operator. Possible values are: `Boolean`, `Binary`, `Reference`, `Integer`, `String`.|

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
  "arity": "String",
  "multivaluedComparisonType": "String",
  "name": "String",
  "supportedAttributeTypes": ["String"]
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
  "suppressions": []
}
-->


