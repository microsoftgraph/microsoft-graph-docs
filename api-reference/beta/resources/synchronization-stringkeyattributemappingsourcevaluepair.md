---
title: "stringKeyAttributeMappingSourceValuePair resource type"
description: "Represents a key-value pair where the key is a string and the value is attributeMappingSource."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# stringKeyAttributeMappingSourceValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value pair where the key is a string and the value is [attributeMappingSource](synchronization-attributemappingsource.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|The name of the parameter.|
|value|[attributeMappingSource](synchronization-attributemappingsource.md)|The value of the parameter.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stringKeyAttributeMappingSourceValuePair"
}-->

```json
{
  "key": "String",
  "value": {"@odata.type": "microsoft.graph.attributeMappingSource"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "stringKeyAttributeMappingSourceValuePair resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


