---
title: "channelMembersNotificationRecipient resource type"
description:  Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the channel members.
author: eddie-lee-msft
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# channelMembersNotificationRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the channel members.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
| Property  | Type   | Description                                            |
| :-------- | :----- | :----------------------------------------------------- |
| teamId    | String | The team's identifier under which the channel resides. |
| channelId | String | The channel's identifier.                              |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelMembersNotificationRecipient"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.channelMembersNotificationRecipient",
  "teamId": "String",
  "channelId": "String"
}
```
