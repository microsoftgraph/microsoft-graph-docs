---
title: "workbookCommentReply resource type"
description: "Definition of workbookCommentReply resource type"
localization_priority: Normal
author: "grangeryy"
ms.prod: "excel"
doc_type: "resourcePageType"
---

# workbookCommentReply resource type

Namespace: microsoft.graph

Represents a reply to an excel comment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List workbookCommentReplies](../api/workbookcomment-list-replies.md) | [workbookCommentReply](workbookcommentreply.md) collection | Retrieve a list of workbookcommentreply objects. |
| [Get workbookCommentReply](../api/workbookcommentreply-get.md) | [workbookCommentReply](workbookcommentreply.md) | Read properties and relationships of workbookCommentReply object. |
| [Create workbookCommentReply](../api/workbookcomment-post-replies.md) | [workbookCommentReply](workbookcommentreply.md) | Create a new workbookCommentReply. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of replied comment.|
|contentType|String|Indicates the type for the replied comment.|
|id|String|Represents the comment identifier. Read-only.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookCommentReply",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "content": "String",
  "contentType": "String",
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookCommentReply resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


