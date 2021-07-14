---
title: "chatMessageMentionedIdentitySet resource type"
description: "Represents the resource @mentioned in a message in a chat or a channel."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageMentionedIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resource (user, application, or conversation) @mentioned in a [message](../resources/chatmessage.md) in a chat or a channel.


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents an application (for example, bot) @mentioned in a [message](../resources/chatmessage.md).|
|conversation|[teamworkConversationIdentity](../resources/teamworkconversationidentity.md)|If present, represents a conversation (for example, team or channel) @mentioned in a [message](../resources/chatmessage.md).|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not used because it's not supported to @mention devices.|
|user|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). If present, represents a user @mentioned in a [message](../resources/chatmessage.md).|
|tag|[teamworkTagIdentity](../resources/teamworktagidentity.md)|If present, represents a tag @mentioned in a team [message](../resources/chatmessage.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageMentionedIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageMentionedIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "conversation": {
    "@odata.type": "microsoft.graph.teamworkConversationIdentity"
  },
  "tag": {
    "@odata.type": "microsoft.graph.teamworkTagIdentity"
  }
}
```