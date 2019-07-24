---
title: "conversationMember resource type"
description: "Represents a user in a conversation."
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# conversationMember resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a [chat](chat.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List Chat members](../api/conversationmember-list.md) | [conversationmember](conversationmember.md) collection | Get the list of all users in the chat.|
|[Get Chat member](../api/conversationmember-get.md) | [conversationmember](conversationmember.md) | Get a single user in the chat.|

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the user.|
|displayName| string | The display name of the user. |
|roles| string collection | The roles for that user. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.conversationMember",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "roles": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->