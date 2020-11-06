---
author: daspek
ms.author: dspektor
ms.date: 09/13/2017
title: ContentTypeOrder
localization_priority: Normal
description: "The contentTypeOrder resource specifies in which order the Content Type will appear in the selection UI."
ms.prod: ""
doc_type: resourcePageType
---

# ContentTypeOrder resource type

Namespace: microsoft.graph

The **contentTypeOrder** resource specifies in which order the Content Type will appear in the selection UI.

## JSON representation

Here is a JSON representation of a **contentTypeOrder** resource.
<!-- { "blockType": "resource", "@type": "microsoft.graph.contentTypeOrder", "@type.aka": "oneDrive.contentTypeOrderFacet" } -->

```json
{
  "default": true,
  "position": 2
}
```

## Properties

| Property name | Type    | Description
|:--------------|:--------|:----------------------------------------------------
| **default**   | boolean | Whether this is the default Content Type
| **position**  | Int32   | Specifies the position in which the Content Type appears in the selection UI.

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentTypeOrder"
} -->

