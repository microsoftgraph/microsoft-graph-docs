---
title: "diagnostic resource type"
description: "Information about an error or warning for a OneNote operation."
localization_priority: Normal
doc_type: resourcePageType
---

# diagnostic resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about an error or warning for a OneNote operation.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.diagnostic"
}-->

```json
{
  "message": "string",
  "url": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message|String|The message describing the condition that triggered the error or warning.|
|url|String|The link to the documentation for this issue.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "diagnostic resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/diagnostic.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
