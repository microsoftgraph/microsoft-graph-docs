---
title: "chatMembersNotificationRecipient resource type"
description:  Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the chat members.
author: eddie-lee-msft
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# chatMembersNotificationRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the chat members.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|chatId|String|The chat's identifier.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMembersNotificationRecipient"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.chatMembersNotificationRecipient",
  "chatId": "String"
}
```

