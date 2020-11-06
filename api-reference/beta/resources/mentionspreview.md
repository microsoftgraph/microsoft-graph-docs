---
title: "mentionsPreview resource type"
description: "Represents information about mention objects in a resource instance."
localization_priority: Normal
author: "simonhult"
ms.prod: "insights"
doc_type: resourcePageType
---

# mentionsPreview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about [mention](../resources/mention.md) objects in a resource instance.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| isMentioned | Boolean | True if the signed-in user is mentioned in the parent resource instance. Read-only. Supports filter. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mentionsPreview"
}-->

```json
{
  "isMentioned": "Boolean"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mentionsPreview resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


