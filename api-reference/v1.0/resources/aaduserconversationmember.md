---
title: "aadUserConversationMember resource type"
description: "Represents Azure Active Directory user in a chat or channel."
localization_priority: Priority
author: "laujan"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# aadUserConversationMember resource type

Namespace: microsoft.graph

Represents an Azure Active Directory user in a [team](team.md).
This type inherits from [conversationMember](conversationmember.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List members](../api/conversationmember-list.md) | [conversationMember](conversationmember.md) collection | Get the list of all users in the chat or channel.|
|[Get member](../api/conversationmember-get.md) | [conversationMember](conversationmember.md) | Get a single user in the chat or channel.|
|[Add member](../api/conversationmember-add.md) | [conversationMember](conversationmember.md)| Add a member to a channel.|
|[Update member](../api/conversationmember-update.md) | [conversationMember](conversationmember.md)| Update a member in the channel.|
|[Delete member](../api/conversationmember-delete.md) | [conversationMember](conversationmember.md)| Delete a member from the channel.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the user.|
|displayName| string | The display name of the user. |
|roles| string collection | The roles for that user. |
|userId| string | The guid of the user. |
|email| string  | The email address of the user. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aadUserConversationMember"
}-->

```json
{
  "id": "string (identifier)",
  "displayName" : "string",
  "roles" : ["string"],
  "userId" : "string",
  "email" : "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "aadUserConversationMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

