---
title: "recentNotebookLinks resource type"
description: "Links to open a OneNote notebook. This resource type exists as a property on a recentNotebook resource."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "jewan-microsoft"
---

# recentNotebookLinks resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links to open a OneNote notebook. This resource type exists as a property on a [recentNotebook](recentnotebook.md) resource.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|oneNoteClientUrl|[externalLink](externallink.md)|Opens the notebook in the OneNote client, if it's installed.|
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
<!--
{
  "type": "#page.annotation",
  "description": "recentNotebookLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


