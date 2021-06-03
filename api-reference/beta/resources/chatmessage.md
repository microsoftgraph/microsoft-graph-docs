---
title: "chatMessage resource type"
description: "Represents an individual chat message in a channel or chat entity. The chat message can be a root chat message or part of a thread that is defined by the **replyToId** property in the chat message."
doc_type: resourcePageType
localization_priority: Normal
author: "RamjotSingh"
ms.prod: "microsoft-teams"
---

# chatMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual chat message within a [channel](channel.md) or [chat](chat.md). The message can be a root message or part of a thread that is defined by the **replyToId** property in the message.

> **Note**: This resource supports subscribing to changes (create, update, and delete) using [change notifications](../resources/webhooks.md). This allows callers to subscribe and get changes in real time. For details, see [Get notifications for messages](/graph/teams-changenotifications-chatMessage).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|**Channel messages**| | |
|[List messages in channel](../api/channel-list-messages.md) | [chatMessage](chatmessage.md) collection | List of all root messages in a channel.|
|[Get delta of messages in channel](../api/chatmessage-delta.md)  | [chatMessage](../resources/chatmessage.md) | Get incremental messages in a channel. |
|[Create subscription for new channel messages](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Listen for new, edited, and deleted messages, and reactions to them. |
|[Get message in channel](../api/chatmessage-get.md) | [chatMessage](chatmessage.md) | Get a single root message in a channel.|
|[Send message in channel](../api/chatmessage-post.md) | [chatMessage](chatmessage.md)| Create a new root message in a channel.|
|[Update message in channel](../api/chatmessage-update.md)|[chatMessage](chatmessage.md)| Update the **policyViolation** property of a chat message.|
|**Channel message replies**| | |
|[List replies to message](../api/chatmessage-list-replies.md) | [chatMessage](chatmessage.md) collection| List of all replies to a chat message in channel.|
|[Get reply message in channel](../api/chatmessage-get.md) | [chatMessage](chatmessage.md) | Get a single reply message in a channel.|
|[Reply to a message in channel](../api/chatmessage-post-replies.md) | [chatMessage](chatmessage.md)| Reply to an existing chat message in a channel.|
|[Update reply message](../api/chatmessage-update.md)|[chatMessage](chatmessage.md)| Update the **policyViolation** property of a chat message.|
|**Chat messages**| | |
|[List messages in chat](../api/chat-list-messages.md)  | [chatMessage](../resources/chatmessage.md) | List chat messages in a chat. |
|[Get message in chat](../api/chatmessage-get.md)  | [chatMessage](../resources/chatmessage.md) | Get a single chat message in a chat. |
|[Get messages across all chats for user](../api/chats-getallmessages.md)| [chat](chat.md) collection| Get messages from all chats that a user is a participant in, including 1:1 chats, group chats, and meeting chats. |
|[Create subscription for new chat messages](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Listen for new, edited, and deleted chat messages, and reactions to them. |
|[Send message in chat](../api/chat-post-messages.md) | [chatMessage](chatmessage.md)| Send a chat message in an existing 1:1 or group chat conversation.|
|[Update message in chat](../api/chatmessage-update.md)|[chatMessage](chatmessage.md)| Update the **policyViolation** property of a chat message.|
|**Hosted content**| | |
|[List all hosted content](../api/chatmessage-list-hostedcontents.md) | [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) collection| Get all hosted contents associated with a message.|
|[Get hosted content](../api/chatmessagehostedcontent-get.md) | [chatMessageHostedContent](../resources/chatmessagehostedcontent.md) | Get hosted content (and its bytes) for a message.|


## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the message.|
|replyToId| string | Read-only. ID of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels, not chats.) |
|from|[identitySet](identityset.md)| Read only. Details of the sender of the chat message.|
|etag| string | Read-only. Version number of the chat message. |
|messageType|string|The type of chat message. The possible value is: `message`.|
|createdDateTime|dateTimeOffset|Timestamp of when the chat message was created.|
|lastModifiedDateTime|dateTimeOffset|Read only. Timestamp when the chat message is created (initial setting) or modified, including when a reaction is added or removed. |
|lastEditedDateTime|dateTimeOffset|Read only. Timestamp when edits to the chat message were made. Triggers an "Edited" flag in the Teams UI. If no edits are made the value is `null`.|
|deletedDateTime|dateTimeOffset|Read only. Timestamp at which the chat message was deleted, or null if not deleted. |
|subject|string| The subject of the chat message, in plaintext.|
|body|[itemBody](itembody.md)|Plaintext/HTML representation of the content of the chat message. Representation is specified by the contentType inside the body. The content is always in HTML if the chat message contains a [chatMessageMention](chatmessagemention.md). |
|summary|string| Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat. |
|attachments|[chatMessageAttachment](chatmessageattachment.md) collection |Attached files. Attachments are currently read-only – sending attachments is not supported. |
|mentions|[chatMessageMention](chatmessagemention.md) collection| List of entities mentioned in the chat message. Currently supports user, bot, team, channel.|
|importance|string | The importance of the chat message. The possible values are: `normal`, `high`, `urgent`.|
|reactions| [chatMessageReaction](chatmessagereaction.md) collection | Reactions for this chat message (for example, Like).|
|locale|string|Locale of the chat message set by the client. Always set to `en-us`.|
|policyViolation | [chatMessagePolicyViolation](chatmessagepolicyviolation.md) |Defines the properties of a policy violation set by a data loss prevention (DLP) application.|
|chatId|string|If the message was sent in a chat, represents the identity of the chat.|
|channelIdentity|[channelIdentity](channelidentity.md)|If the message was sent in a channel, represents identity of the channel.|
|webUrl|string|Read-only. Link to the message in Microsoft Teams.|
## Relationships

| Relationship   | Type    | Description |
|:---------------|:--------|:----------|
|replies|[chatMessage](chatmessage.md)| Replies for a specified message. |
|hostedContents|[chatMessageHostedContent](chatmessagehostedcontent.md)| Content in a message hosted by Microsoft Teams - for example, images or code snippets. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "replyToId",
    "lastEditedDateTime",
    "deletedDateTime",
    "subject",
    "summary",
    "attachments",
    "mentions",
    "reactions",
    "policyViolation",
    "chatId",
    "channelIdentity"
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
  "lastEditedDateTime": "string (timestamp)",
  "deletedDateTime": "string (timestamp)",
  "subject": "string",
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "summary": "string",
  "attachments": [{"@odata.type": "microsoft.graph.chatMessageAttachment"}],
  "mentions": [{"@odata.type": "microsoft.graph.chatMessageMention"}],
  "importance": "string",
  "reactions": [{"@odata.type": "microsoft.graph.chatMessageReaction"}],
  "locale": "string",
  "policyViolation": {"@odata.type": "microsoft.graph.chatMessagePolicyViolation"},
  "chatId": "string",
  "channelIdentity": {"@odata.type": "microsoft.graph.channelIdentity"},
  "webUrl": "string"
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
