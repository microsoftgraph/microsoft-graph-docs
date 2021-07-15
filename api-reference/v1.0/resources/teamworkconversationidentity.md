---
title: "teamworkConversationIdentity resource type"
description: "Represents a conversation in Microsoft Teams."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConversationIdentity resource type

Namespace: microsoft.graph

Represents a **conversation** (chat, team, or channel) in Microsoft Teams.

Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conversationIdentityType|teamworkConversationIdentityType|Type of conversation. Possible values are: `team`, `channel`, `chat`, and `unknownFutureValue`.|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the conversation. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the conversation.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkConversationIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkConversationIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "conversationIdentityType": "String"
}
```

