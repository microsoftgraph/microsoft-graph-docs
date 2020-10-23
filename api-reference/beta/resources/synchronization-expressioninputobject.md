---
title: "expressionInputObject resource type"
description: "Represents an object to be used as input test data when the synchronizationSchema parseExpression action performs an expression evaluation."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# expressionInputObject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an object to be used as input test data when the [parseExpression](../api/synchronization-synchronizationschema-parseexpression.md) action performs an expression evaluation.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|[objectDefinition](synchronization-objectdefinition.md)|Definition of the test object.|
|properties|[stringKeyObjectValuePair](synchronization-stringkeyobjectvaluepair.md) collection|Property values of the test object.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.expressionInputObject"
}-->

```json
{
  "definition": {"@odata.type": "microsoft.graph.objectDefinition"},
  "properties": [{"@odata.type": "microsoft.graph.stringKeyObjectValuePair"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "expressionInputObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


