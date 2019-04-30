---
title: "chatMessage resource type"
description: "Represents an individual chat message within a channel or chat entity. The message can be an root message or part of a thread that is defined by the **replyToId** property in the message."
localization_priority: Priority
doc_type: resourcePageType
author: "nkramer"
ms.prod: "microsoft-teams"
---

# chatMessage resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual chat message within a [channel](channel.md) or [chat](chat.md). 
The message can be a root message or part of a thread that is defined by the **replyToId** property in the message.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List Channel messages](../api/channel-list-messages.md) | [chatmessage](chatmessage.md) collection | Get the list of all root messages in a channel.|
|[Get Channel message](../api/channel-get-message.md) | [chatmessage](chatmessage.md) | Get a single root message from a channel.|
|[List replies to a message](../api/channel-list-messagereplies.md) | [chatmessage](chatmessage.md) collection| Get the list of all replies to a message in channel.|
|[Get a reply to a message](../api/channel-get-messagereply.md) | [chatmessage](chatmessage.md)| Get a single reply to a message in a channel.|
|[Send a message in a channel](../api/channel-post-chatmessage.md) | [chatmessage](chatmessage.md)| Create a new top-level message in a channel.|
|[Reply to a message in a channel](../api/channel-post-messagereply.md) | [chatmessage](chatmessage.md)| Reply to an existing message in a channel.|
|[List messages in a chat](../api/chat-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | Get messages in a 1:1 or group chat. |
|[Get message in chat](../api/chat-get-message.md)  | [chatMessage](../resources/chatmessage.md) | Get a single message in a chat. |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the message.|
|replyToId| string | Id of the parent message/root message of the thread. (Only applies to messages in channels not chats) |
|from|[identitySet](identityset.md)| Read only. Details of the sender of the message.|
|etag| string | Version number of the message. |
|messageType|String|The type of message, current supported values are: message, chatEvent, Typing.|
|createdDateTime|dateTimeOffset|Read only. Timestamp of when the message was created.|
|lastModifiedDateTime|dateTimeOffset|Read only. Timestamp of when the message was edited/updated.|
|deletedDateTime|dateTimeOffset|Read only. Timestamp at which the message was deleted, or null if not deleted. |
|subject|string| The subject of the message, in plaintext.|
|body|[itemBody](itembody.md)|Plaintext/HTML representation of the content of the message. Representation is specified by the contentType inside the body. The content is always in HTML if the message contains a [chatMessageMention](chatmessagemention.md). |
|summary|string| Summary text of the message that could be used for push notifications and summary views or fall back views. Only applies to channel messages, not chat messages. |
|attachments|[chatMessageAttachment](chatmessageattachment.md) collection |Attached files. Attachments are currently read-only – sending attachments is not supported. |
|mentions|[chatMessageMention](chatmessagemention.md) collection| List of entities mentioned in the message. Currently supports user, bot, team, channel.|
|importance| string | The importance of the message: Normal, High.|
|reactions| [chatMessageReaction](chatmessagereaction.md) collection | Reactions for this message (for example, Like).|
|locale|string|Locale of the message set by the client.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "deleted",
    "deletedDateTime",
    "attachments",
    "importance",
    "reactions",
    "mentions",
    "subject",
    "summary"
  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessage"
}-->

```json
{
  "id": "string (identifier)",
  "replyToId": "string (identifier)",
  "from": {"@odata.type": "microsoft.graph.identitySet"},
  "etag": "string",
  "messageType": "string",
  "createdDateTime": "string (timestamp)",
  "lastModifiedDateTime": "string (timestamp)",
  "deletedDateTime": "string (timestamp)",
  "subject": "string",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "summary": "string",
  "attachments": [{"@odata.type": "microsoft.graph.chatMessageAttachment"}],
  "mentions": [{"@odata.type": "microsoft.graph.chatMessageMention"}],
  "importance": "string",
  "policyViolation": "string",
  "reactions": [{"@odata.type": "microsoft.graph.chatMessageReaction"}],
  "locale": "string",
  "deleted": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
