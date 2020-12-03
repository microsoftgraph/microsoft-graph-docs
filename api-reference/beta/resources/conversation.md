---
title: "conversation resource type"
description: "A conversation is a collection of threads, and a thread contains posts to that thread. All threads and posts in a conversation share the same subject."
localization_priority: Normal
author: "dkershaw10"
ms.prod: "groups"
doc_type: resourcePageType
---

# conversation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A conversation is a collection of [threads](conversationthread.md), and a thread contains posts to that thread. All threads and posts in a conversation share the same subject.

This resource supports subscribing to [change notifications](/graph/webhooks).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List conversations](../api/group-list-conversations.md) | [conversation](conversation.md) collection |Get the list of conversations in this group.|
|[Create](../api/group-post-conversations.md) |[conversation](conversation.md)| Create a new conversation by including a thread and a post.|
|[Get conversation](../api/conversation-get.md) | [conversation](conversation.md) |Read properties and relationships of conversation object.|
|[Delete](../api/conversation-delete.md) | None |Delete conversation object. |
|[List conversation threads](../api/conversation-list-threads.md) |[conversationThread](conversationthread.md) collection| Get all the threads in a group conversation.|
|[Create conversation thread](../api/conversation-post-threads.md) |[conversationThread](conversationthread.md) collection| Create a thread in the specified conversation.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|hasAttachments|Boolean|Indicates whether any of the posts within this Conversation has at least one attachment.|
|id|String|The conversations's unique identifier. Read-only.|
|lastDeliveredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|preview|String|A short summary from the body of the latest post in this converstaion.|
|topic|String|The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.|
|uniqueSenders|String collection|All the users that sent a message to this Conversation.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|threads|[conversationThread](conversationthread.md) collection|A collection of all the conversation threads in the conversation. A navigation property. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "threads"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conversation"
}-->

```json
{
  "hasAttachments": true,
  "id": "string (identifier)",
  "lastDeliveredDateTime": "String (timestamp)",
  "preview": "string",
  "topic": "string",
  "uniqueSenders": ["string"]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conversation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


