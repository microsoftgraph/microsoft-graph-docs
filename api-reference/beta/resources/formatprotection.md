---
title: "FormatProtection resource type"
description: "Represents the format protection of a range object."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "ruoyingl"
---

# FormatProtection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the format protection of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get FormatProtection](../api/formatprotection-get.md) | [FormatProtection](formatprotection.md) |Read properties and relationships of formatProtection object.|
|[Update](../api/formatprotection-update.md) | [FormatProtection](formatprotection.md)	|Update FormatProtection object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|formulaHidden|boolean|Indicates if Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.|
|locked|boolean|Indicates if Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.formatProtection"
}-->

```json
{
  "formulaHidden": true,
  "locked": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "FormatProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


