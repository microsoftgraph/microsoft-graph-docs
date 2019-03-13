---
title: "recentNotebookLinks resource type"
description: "Links to open a OneNote notebook. This resource type exists as a property on a recentNotebook resource."
localization_priority: Normal
doc_type: resourcePageType
---

# recentNotebookLinks resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links to open a OneNote notebook. This resource type exists as a property on a [recentNotebook](recentnotebook.md) resource.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|oneNoteClientUrl|[externalLink](externallink.md)|Opens the notebook in the OneNote client, if it's installed.|
|oneNoteWebUrl|[externalLink](externallink.md)|Opens the notebook in OneNote Online.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recentNotebookLinks"
}-->

```json
{
  "oneNoteClientUrl": {"@odata.type": "microsoft.graph.externalLink"},
  "oneNoteWebUrl": {"@odata.type": "microsoft.graph.externalLink"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "recentNotebookLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/recentnotebooklinks.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
