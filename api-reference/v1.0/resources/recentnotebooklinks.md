---
title: "recentNotebookLinks resource type"
description: "Links for opening a OneNote notebook. This resource type exists as a property on a recentNotebook resource."
localization_priority: Normal
author: "jewan-microsoft"
ms.prod: ""
doc_type: resourcePageType
---

# recentNotebookLinks resource type

Namespace: microsoft.graph

Links for opening a OneNote notebook. This resource type exists as a property on a [recentNotebook](recentnotebook.md) resource.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|oneNoteClientUrl|[externalLink](externallink.md)|Opens the notebook in the OneNote native client if it's installed.|
|oneNoteWebUrl|[externalLink](externallink.md)|Opens the notebook in OneNote on the web.|

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
<!-- {
  "type": "#page.annotation",
  "description": "recentNotebookLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

