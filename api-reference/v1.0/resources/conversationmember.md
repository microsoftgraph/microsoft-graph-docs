---
title: "conversationMember resource type"
description: "Represents user in a conversation."
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a [team](team.md).
See also [aadUserConversationMember](aaduserconversationmember.md).

## Properties

| Property    | Type              | Description                       |
| :---------- | :---------------- | :-------------------------------- |
| id          | String            | Read-only. Unique ID of the user. |
| displayName | string            | The display name of the user.     |
| roles       | string collection | The roles for that user.          |

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
