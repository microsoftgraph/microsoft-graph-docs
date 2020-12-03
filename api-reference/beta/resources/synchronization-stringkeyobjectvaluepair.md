---
title: "stringKeyObjectValuePair resource type"
description: "Represents a key-value pair where the key is a string and the value is an arbitrary JSON object. This is an OData open type that expects to have a property named `value` that is a valid JSON object."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# stringKeyObjectValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value pair where the key is a string and the value is an arbitrary JSON object. This is an OData open type that expects to have a property named `value` that is a valid JSON object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Key.|
|value|Json|Arbitrary JSON object.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stringKeyObjectValuePair"
}-->

```json
{
  "key": "String",
  "value": {
    "@odata.type": "microsoft.graph.Json"
  }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "stringKeyObjectValuePair resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


