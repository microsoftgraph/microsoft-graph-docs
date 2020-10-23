---
title: "expressionEvaluationDetails resource type"
description: "Represents the expression details, result, and property details."
localization_priority: Normal
author: "yyuank"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# expressionEvaluationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the expression details, result, and property details.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| expression | String | Represents expression which has been evaluated. |
| expressionEvaluationDetails | expressionEvaluationDetails collection | Represents the details of the evaluation of the expression. |
| expressionResult | Boolean | Represents the value of the result of the current expression. |
| propertyToEvaluate | [propertyToEvaluate](propertytoevaluate.md) | Defines the name of the property and the value of that property. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.expressionEvaluationDetails",
  "baseType": null
}-->

```json
{
  "expression": "String",
  "expressionEvaluationDetails": [{"@odata.type": "microsoft.graph.expressionEvaluationDetails"}],
  "expressionResult": true,
  "propertyToEvaluate": {"@odata.type": "microsoft.graph.propertyToEvaluate"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "expressionEvaluationDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


