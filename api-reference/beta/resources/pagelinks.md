---
title: "pageLinks resource type"
description: "Links for opening a OneNote page."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "jewan-microsoft"
---

# pageLinks resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links for opening a OneNote page.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.pageLinks"
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
|oneNoteClientUrl|[externalLink](externallink.md)|Opens the page in the OneNote native client if it's installed.|
|oneNoteWebUrl|[externalLink](externallink.md)|Opens the page in OneNote on the web.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "pageLinks resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


