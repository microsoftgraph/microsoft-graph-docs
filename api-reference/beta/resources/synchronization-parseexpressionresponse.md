---
title: "parseExpressionResponse resource type"
description: "Represents the response from the synchronizationSchema: parseExpression action."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# parseExpressionResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response from the [parseExpression](../api/synchronization-synchronizationschema-parseexpression.md) action.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|error|publicError|Error details, if expression evaluation resulted in an error.|
|evaluationResult|String collection|A collection of values produced by the evaluation of the expression.|
|evaluationSucceeded|Boolean|`true` if the evaluation was successful.|
|parsedExpression|[attributeMappingSource](synchronization-attributemappingsource.md)|An [attributeMappingSource](synchronization-attributemappingsource.md) object representing the parsed expression.|
|parsingSucceeded|Boolean|`true` if the expression was parsed successfully.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.parseExpressionResponse"
}-->

```json
{
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "evaluationResult": ["String"],
  "evaluationSucceeded": true,
  "parsedExpression": {"@odata.type": "microsoft.graph.attributeMappingSource"},
  "parsingSucceeded": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "parseExpressionResponse resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


