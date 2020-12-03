---
title: "teamFunSettings resource type"
description: "Settings to configure use of Giphy, memes, and stickers in the team."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamFunSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure use of Giphy, memes, and stickers in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowGiphy|Boolean|If set to true, enables Giphy use.|
|giphyContentRating|String (enum)|Giphy content rating. Possible values are: `moderate`, `strict`.|
|allowStickersAndMemes|Boolean|If set to true, enables users to include stickers and memes.|
|allowCustomMemes|Boolean|If set to true, enables users to include custom memes.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamFunSettings"
}-->

```json
{
  "allowGiphy": true,
  "giphyContentRating": "strict",
  "allowStickersAndMemes": true,
  "allowCustomMemes": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's funSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


