---
title: "teamGuestSettings resource type"
description: "Settings to configure whether guests can create, update, or delete channels in the team."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamGuestSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings to configure whether guests can create, update, or delete channels in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|Boolean|If set to true, guests can add and update channels.|
|allowDeleteChannels|Boolean|If set to true, guests can delete channels.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamGuestSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowDeleteChannels": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "team's guestSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


