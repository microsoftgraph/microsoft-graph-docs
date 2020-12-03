---
title: "post resource type"
description: "Represents an individual post item within a converstaionThread entity."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "groups"
doc_type: resourcePageType
---

# post resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual post item within a [converstaionThread](conversationthread.md) entity.

Even though you cannot explicitly create a post, doing any of the following would create a post:

* [Reply to an existing post](../api/post-reply.md) 
* [Reply to an existing thread](../api/conversationthread-reply.md) 
* [Create a thread in a new conversation](../api/group-post-threads.md)
* [Create a new conversation](../api/group-post-conversations.md)

This resource lets you add your own data to custom properties using [extensions](/graph/extensibility-overview).

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attachments",
    "extensions",
    "inReplyTo",
    "multiValueExtendedProperties",
    "singleValueExtendedProperties"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.post"
}-->

```json
{
  "body": {"@odata.type": "microsoft.graph.itemBody"},
  "categories": ["string"],
  "changeKey": "string",
  "conversationId": "string",
  "conversationThreadId": "string",
  "createdDateTime": "String (timestamp)",
  "from": {"@odata.type": "microsoft.graph.recipient"},
  "hasAttachments": true,
  "id": "string (identifier)",
  "importance": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "newParticipants": [{"@odata.type": "microsoft.graph.recipient"}],
  "receivedDateTime": "String (timestamp)",
  "sender": {"@odata.type": "microsoft.graph.recipient"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|body|[itemBody](itembody.md)|The contents of the post. This is a default property. This property can be null.|
|categories|String collection|The categories associated with the post. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) that has been defined for a user.|
|changeKey|String|Identifies the version of the post. Every time the post is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object.|
|conversationId|String|Unique ID of the conversation. Read-only.|
|conversationThreadId|String|Unique ID of the conversation thread. Read-only.|
|createdDateTime|DateTimeOffset|Specifies when the post was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|from|[recipient](recipient.md)|Used in delegate access scenarios. Indicates who posted the message on behalf of another user. This is a default property.|
|hasAttachments|Boolean|Indicates whether the post has at least one attachment. This is a default property.|
|id|String| Read-only.|
|importance | String | The importance of a group post: `low`, `normal`, `high`. |
|lastModifiedDateTime|DateTimeOffset|Specifies when the post was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|newParticipants|[recipient](recipient.md) collection|Conversation participants that were added to the thread as part of this post.|
|receivedDateTime|DateTimeOffset|Specifies when the post was received. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|sender|[recipient](recipient.md)|Contains the address of the sender. The value of Sender is assumed to be the address of the authenticated user in the case when Sender is not specified. This is a default property.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|attachments|[Attachment](attachment.md) collection|The collection of [fileAttachment](fileattachment.md), [itemAttachment](itemattachment.md), and [referenceAttachment](referenceattachment.md) attachments for the post. Read-only. Nullable.|
|extensions|[Extension](extension.md) collection|The collection of open extensions defined for the post. Read-only. Nullable.|
|inReplyTo|[Post](post.md)|The earlier post that this post is replying to in the [conversationThread](conversationthread.md). Read-only.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the post. Read-only. Nullable.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the post. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List posts](../api/conversationthread-list-posts.md) | [post](post.md) |Get the posts of the specified thread. |
|[Get post](../api/post-get.md) | [post](post.md) |Get the properties and relationships of a post in a specified thread.|
|[Reply](../api/post-reply.md)|None|Reply to a post and add a new post to the specified thread in a group conversation.|
|[Forward](../api/post-forward.md)|None|Forward a post to a recipient.|
|**Attachments**| | |
|[List attachments](../api/post-list-attachments.md) |[attachment](attachment.md) collection| Get all attachments on a post.|
|[Add attachment](../api/post-post-attachments.md) |[attachment](attachment.md)| Add an attachment to a post. |
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|
|**Extended properties**| | |
|[Create single-value extended property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[post](post.md)  |Create one or more single-value extended properties in a new or existing post.   |
|[Get post with single-value extended property](../api/singlevaluelegacyextendedproperty-get.md)  | [post](post.md) | Get posts that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value extended property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [post](post.md) | Create one or more multi-value extended properties in a new or existing post.  |
|[Get post with multi-value extended property](../api/multivaluelegacyextendedproperty-get.md)  | [post](post.md) | Get a post that contains a multi-value extended property by using `$expand`. |

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "post resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


