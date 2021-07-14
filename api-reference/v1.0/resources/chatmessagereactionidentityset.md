---
title: "chatMessageReactionIdentitySet resource type"
description: "Represents a user that reacted to a message in a chat or a channel."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageReactionIdentitySet resource type

Namespace: microsoft.graph

Represents a **user** that reacted to a [message](../resources/chatmessage.md) in a chat or a channel. Only the `user` property has a value.


Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not set because applications can't react to messages.|
|device|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Not set because devices can't react to messages.|
|user|[identity](../resources/identity.md)|Inherited from [identitySet](../resources/identityset.md). Details about the user who reacted to the message.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageReactionIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageReactionIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

