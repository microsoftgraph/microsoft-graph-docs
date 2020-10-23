---
title: "chatMessageMention resource type"
description: "Represents a mention in a chatMessage entity. The mention can be to a user, team, bot or channel. "
localization_priority: Normal
author: nkramer
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# chatMessageMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention in a [chatMessage](chatmessage.md) entity. The mention can be to a [user](user.md), [team](team.md), bot, or [channel](channel.md). 

In a **chatMessage** object that contains one or more mentions, the message body **content** property represents the chat message in HTML. It encloses the **mentionText** of each mention in an HTML `at` element, with an `id` attribute that corresponds to the **id** property of the mention.

As an example, a chat message contains two mentions, with the mention text "Megan" and "Alex" respectively. Its body **content** property specifies `at` elements for the two mentions as follows:

``` json
"body": {
    "contentType": "html",
    "content": "<div><div>Ah, <at id=\"0\">Megan</at>, <at id=\"1\">Alex</at>, I saw them in a separate folder. Thanks!</div>\n</div>"
}
```

In the **content** property, the first mention has an HTML `id` attribute of 0. This corresponds to the **id** property of that first instance of **chatMessageMention**, which is also 0.

The second mention has an `id` attribute of 1, matching the **id** property of the second instance, which is 1.

For a fuller context of the example, see [List channel message replies](../api/channel-list-messagereplies.md#example).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|Int32|Index of an entity being mentioned in the specified **chatMessage**. Matches the {index} value in the corresponding `<at id="{index}">` tag in the message body.|
|mentionText|string|String used to represent the mention. For example, a user's display name, a team name.|
|mentioned|[identitySet](identityset.md)|The entity (user, application, team, or channel) that was mentioned.  If it was a channel or team that was @mentioned, the identitySet contains a **conversation** property giving the ID of the team/channel, and a **conversationIdentityType** property that represents either the team or channel.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageMention"
}-->

```json
{
  "id": 1024,
  "mentionText": "string",
  "mentioned": {"@odata.type": "microsoft.graph.identitySet"}
 }
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat mention resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


