---
title: "metadataEntry resource type"
description: "Metadata for the given object."
localization_priority: Normal
doc_type: resourcePageType
---

# metadataEntry resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for the given object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Name of the metadata property.|
|value|String|Value of the metadata property.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.metadataEntry"
}-->

```json
{
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "metadataEntry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-metadataentry.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
