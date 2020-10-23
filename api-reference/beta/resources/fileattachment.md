---
title: "fileAttachment resource type"
description: "A file (such as a text file or Word document) attached to an event,"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "outlook"
author: "svpsiva"
---

# fileAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-sharedfeature](../../includes/outlooktask-deprecate-sharedfeature.md)]

A file (such as a text file or Word document) attached to a user [event](../resources/event.md),
[message](../resources/message.md), [Outlook task](../resources/outlooktask.md), or [post](../resources/post.md). 

When creating a file attachment, include the following in the request body:

* `"@odata.type": "#microsoft.graph.fileAttachment"`
* The required properties **name** and **contentBytes**.

Derived from [attachment](attachment.md).

> [!NOTE]
> Make sure to encode the file content in base64 before assigning it to **contentBytes**.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment-get.md) | [fileAttachment](fileattachment.md) |Read the properties, relationships, or raw contents of a fileAttachment object.|
|[Delete](../api/attachment-delete.md) | None |Delete fileAttachment object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentBytes|Edm.Binary|The base64-encoded contents of the file.|
|contentId|String|The ID of the attachment in the Exchange store.|
|contentLocation|String|Do not use this property as it is not supported.|
|contentType|String|The content type of the attachment.|
|id|String|The attachment ID.|
|isInline|Boolean|Set to true if this is an inline attachment.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified.|
|name|String|The name representing the text that is displayed below the icon representing the embedded attachment.This does not need to be the actual file name.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.attachment",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileAttachment"
}-->

```json
{
  "contentBytes": "string (binary)",
  "contentId": "string",
  "contentLocation": "string",
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "fileAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


