---
title: "attributeMappingFunctionSchema resource type"
description: "Describes a function that can be used in an attribute mapping to transform values during synchronization."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# attributeMappingFunctionSchema resource type

Namespace: microsoft.graph

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
  "suppressions": []
}
-->


