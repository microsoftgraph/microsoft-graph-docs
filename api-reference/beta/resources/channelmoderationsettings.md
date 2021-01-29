---
title: "channelModerationSettings resource type"
description: "Used to control who can start new posts and reply to posts in a channel."
author: "bhartono"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelModerationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Teams, team owners can turn on moderation for a channel to control who can start new posts and reply to posts in that channel. For example, owners might want to do the following:

- Use a channel for announcements only.
- Use a channel for discussions in a class team where only the teacher can start new discussions.
- Use a channel for livesite issues where new posts can be started by connectors.

By default, moderation is `OFF`, which means that the usual channel settings apply to team owners and team members, with additional control to allow only team members or everyone including guests to start a new channel post. Setting channel moderation to `ON` allows only moderators to start new posts, with additional control for team members.

To support channel moderation settings via Microsoft Graph APIs:

- Team members should be able to query channel moderation settings.
- Team owners should be able to set channel moderation settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowNewMessageFromBots|Boolean|Indicates whether bots are allowed to post messages.|
|allowNewMessageFromConnectors|Boolean|Indicates whether connectors are allowed to post messages.|
|replyRestriction|replyRestriction|Indicates who is allowed to reply to the teams channel. Possible values are: `everyone`, `authorAndModerators`, `unknownFutureValue`.|
|userNewMessageRestriction|userNewMessageRestriction|Indicates who is allowed to post messages to teams channel. Possible values are: `everyone`, `everyoneExceptGuests`, `moderators`, `unknownFutureValue`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelModerationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelModerationSettings",
  "userNewMessageRestriction": "String",
  "replyRestriction": "String",
  "allowNewMessageFromBots": "Boolean",
  "allowNewMessageFromConnectors": "Boolean"
}
```

## See also

- To modify moderation settings of a channel, see example 2 in [Update channel](../api/channel-patch.md).
