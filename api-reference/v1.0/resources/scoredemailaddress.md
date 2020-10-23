---
title: "scoredEmailAddress resource type"
description: "Represents a scored email address."
localization_priority: Normal
author: "AAmatino"
ms.prod: ""
doc_type: resourcePageType
---

# scoredEmailAddress resource type

Namespace: microsoft.graph

Represents a scored email address.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|string|The email address.|
|relevanceScore|double|The relevance score of the email address. A relevance score is used as a sort key, in relation to the other returned results. A higher relevance score value corresponds to a more relevant result. Relevance is determined by the user’s communication and collaboration patterns and business relationships. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.scoredEmailAddress"
}-->

```json
{
  "address": "string",
  "relevanceScore": 1024.0
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "scoredEmailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

