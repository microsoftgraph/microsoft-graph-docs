---
title: "patchContentCommand resource type"
description: "The changes to make to a OneNote page in a PATCH request."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "jewan-microsoft"
---

# patchContentCommand resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The changes to make to a OneNote page in a PATCH request.

## JSON representation

Here is a JSON representation of the resource, which is sent in the body of the [PATCH pages/{id}`](../api/page-update.md) request.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenotePatchContentCommand"
}-->

```json
{
  "action": "String",
  "content": "string",
  "position": "String",
  "target": "string"
}

```

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|action|String|The action to perform on the target element. Possible values are: `replace`, `append`, `delete`, `insert`, or `prepend`.|
|content|String|A string of well-formed HTML to add to the page, and any image or file binary data. If the content contains binary data, the request must be sent using the `multipart/form-data` content type with a "Commands" part. |
|position|String|The location to add the supplied content, relative to the target element. Possible values are: `after` (default) or `before`.|
|target|String|The element to update. Must be the `#<data-id>` or the generated `{id}` of the element, or the `body` or `title` keyword.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "patchContentCommand resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


