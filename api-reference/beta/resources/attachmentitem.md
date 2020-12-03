---
title: "attachmentItem resource type"
description: "Represents attributes of an item to be attached."
localization_priority: Normal
author: "svpsiva"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# attachmentItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents attributes of an item to be attached.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|attachmentType|String| The type of attachment. Possible values are: `file`, `item`, `reference`. Required.|
|contentType|String|The nature of the data in the attachment. Optional.|
|isInline|Boolean|`true` if the attachment is an inline attachment; otherwise, `false`. Optional.|
|name|String|The display name of the attachment. This can be a descriptive string and does not have to be the actual file name. Required.|
|size|Int64|The length of the attachment in bytes. Required.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "contentType",
    "isInline"
  ],
  "@odata.type": "microsoft.graph.attachmentItem",
  "baseType": null
}-->

```json
{
  "attachmentType": "String",
  "contentType": "String",
  "isInline": true,
  "name": "String",
  "size": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attachmentItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

