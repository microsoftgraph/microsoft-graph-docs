---
title: "chatInfo resource type"
description: "Contains information associated with Microsoft Teams meetings."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# chatInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information associated with Microsoft Teams meetings.

## Properties

| Property            | Type    | Description|
|:--------------------|:--------|:-----------|
| messageId           | String  | The unique identifier for a message in a Microsoft Teams channel. |
| replyChainMessageId | String  | The ID of the reply message. |
| threadId            | String  | The unique identifier for a thread in Microsoft Teams. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatInfo"
}-->
```json
{
  "messageId": "String",
  "replyChainMessageId": "String",
  "threadId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chatInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


