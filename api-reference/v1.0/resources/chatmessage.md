---
title: "chatMessage resource type"
description: "Represents an individual chat message within a channel or chat entity. The chat message can be a root chat message or part of a thread that is defined by the **replyToId** property in the chat message."
doc_type: resourcePageType
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
---

# chatMessage resource type

Namespace: microsoft.graph

Represents an individual chat message within a [channel](./channel.md) or (in beta) [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true). The chat message can be a root chat message or part of a reply thread that is defined by the **replyToId** property in the chat message.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|**Channel messages**| | |
|[List channel chatMessage](../api/channel-list-messages.md) | [chatMessage](chatmessage.md) collection | List of all root chat messages in a channel.|
|[Get chatMessages in a channel delta](../api/chatmessage-delta.md)  | [chatMessage](../resources/chatmessage.md) | Get incremental chat messages in a channel. |
|[Create subscription for new channel messages](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Listen for new and edited channel messages, and reactions to them. |
|[Get channel chatMessage](../api/channel-get-message.md) | [chatMessage](chatmessage.md) | Get a single root chat message from a channel.|
|[Create chatMessage in a channel](../api/channel-post-message.md) | [chatMessage](../resources/chatmessage.md) | Send a message to a channel. |
|[Update chatMessage](../api/chatmessage-update.md)|[chatMessage](chatmessage.md)| Update the **policyViolation** property of a chat message.|
|**Channel message replies**| | |
|[List replies to a chatMessage](../api/channel-list-messagereplies.md) | [chatMessage](chatmessage.md) collection| List of all replies to a chat message in channel.|
|[Get a reply to a chatMessage](../api/channel-get-messagereply.md) | [chatMessage](chatmessage.md)| Get a single reply to a chat message in a channel.|
|[Reply to a chatMessage in a channel](../api/channel-post-messagereply.md) | [chatMessage](chatmessage.md)| Reply to an existing chat message in a channel.|
|[Update chatMessage](../api/chatmessage-update.md)|[chatMessage](chatmessage.md)| Update the **policyViolation** property of a chat message.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique Id of the message.|
|replyToId| string | Read-only. Id of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels not chats) |
|from|[identitySet](identityset.md)| Read only. Details of the sender of the chat message.|
|etag| string | Read-only. Version number of the chat message. |
|messageType|string|The type of chat message. The possible values are: `message`.|
|createdDateTime|dateTimeOffset|Read only. Timestamp of when the chat message was created.|
|lastModifiedDateTime|dateTimeOffset|Read only. Timestamp when the chat message is created (initial setting) or edited, including when a reaction is added or removed. |
|lastEditedDateTime|dateTimeOffset|Read only. Timestamp when edits to the chat message were made. Triggers an "Edited" flag in the Microsoft Teams UI. If no edits are made the value is `null`.|
|deletedDateTime|dateTimeOffset|Read only. Timestamp at which the chat message was deleted, or null if not deleted. |
|subject|string| The subject of the chat message, in plaintext.|
|body|[itemBody](itembody.md)|Plaintext/HTML representation of the content of the chat message. Representation is specified by the contentType inside the body. The content is always in HTML if the chat message contains a [chatMessageMention](chatmessagemention.md). |
|summary|string| Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat. |
|attachments|[chatMessageAttachment](chatmessageattachment.md) collection |Attached files. Attachments are currently read-only – sending attachments is not supported. |
|mentions|[chatMessageMention](chatmessagemention.md) collection| List of entities mentioned in the chat message. Currently supports user, bot, team, channel.|
|importance| string | The importance of the chat message. The possible values are: `normal`, `high`, `urgent`.|
| policyViolation | [chatMessagePolicyViolation](../resources/chatmessagepolicyviolation.md) |Defines the properties of a policy violation set by a data loss prevention (DLP) application.|
|locale|string|Locale of the chat message set by the client.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "deleted",
    "deletedDateTime",
    "attachments",
    "importance",
    "mentions",
    "subject",
    "summary",
    "policyViolation",
    "locale"
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
  "policyViolation": {"@odata.type": "microsoft.graph.chatMessagePolicyViolation"},
  "locale": "string"
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
