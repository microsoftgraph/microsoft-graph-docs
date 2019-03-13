---
title: "itemBody resource type"
description: "Represents properties of the body of an item, such as a message, event or group post."
localization_priority: Normal
doc_type: resourcePageType
---

# itemBody resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties of the body of an item, such as a message, event or group post.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|String|The content of the item.|
|contentType|String|The type of the content. Possible values are `text` and `HTML`.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemBody"
}-->

```json
{
  "content": "string",
  "contentType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "itemBody resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/itembody.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
