---
title: "sizeRange resource type"
description: "Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply."
localization_priority: Normal
---

# sizeRange resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the maximum and minimum sizes (in kilobytes) that an incoming message must have in order for a condition or exception to apply.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| maximumSize | Int32 | The maximum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |
| minimumSize | Int32 | The minimum size (in kilobytes) that an incoming message must have in order for a condition or exception to apply. |


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.sizeRange"
}-->

```json
{
  "maximumSize": "Int32",
  "minimumSize": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "sizeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/sizerange.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
