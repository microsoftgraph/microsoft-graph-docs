---
title: "workbookComment resource type"
description: "Definition of workbookComment resource type"
localization_priority: Normal
author: "grangeryy"
ms.prod: "excel"
doc_type: "resourcePageType"
---

# workbookComment resource type

Namespace: microsoft.graph

Represents a comment in workbook.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List workbookComments](../api/workbook-list-comments.md) | [workbookComment](workbookComment.md) collection | Get a **workbookComment** object collection. |
| [Get workbookComment](../api/workbookcomment-get.md) | [workbookComment](workbookcomment.md) | Read the properties and relationships of a **workbookComment** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of comment.|
|contentType|String|Indicates the type for the comment.|
|id|String| Represents the comment identifier. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|replies|[workbookCommentReply](workbookcommentreply.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookComment",
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
  "description": "workbookComment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

