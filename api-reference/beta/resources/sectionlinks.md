---
title: "sectionLinks resource type"
description: "Links for opening a OneNote section."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "jewan-microsoft"
---

# sectionLinks resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links for opening a OneNote section.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sectionLinks"
}-->

```json
{
  "oneNoteClientUrl": {"@odata.type": "microsoft.graph.externalLink"},
  "oneNoteWebUrl": {"@odata.type": "microsoft.graph.externalLink"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|oneNoteClientUrl|[externalLink](externallink.md)|Opens the section in the OneNote native client if it's installed.|
|oneNoteWebUrl|[externalLink](externallink.md)|Opens the section in OneNote on the web.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "sectionLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


