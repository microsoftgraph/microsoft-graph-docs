---
author: rahmit
description: "The webPart resource represents type and rendering information for a web part on a sitePage."
ms.date: 09/01/2018
title: WebPart
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# webPart resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **webPart** resource represents type and rendering information for a web part on a [sitePage](sitepage.md).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.webPart"
}-->

```json
{
  "type": "string (identifier)",
  "data": {"@odata.type":"microsoft.graph.sitePageData"}
}
```

## Properties

| Property                | Type             | Description
|:------------------------|:-----------------|:----------------------------------
| **type**                | String           | A unique identifier specifying the webPart type. Read-only.
| **data**                | [sitePageData][] | The required properties for the webPart (varies by webPart)

[sitePageData]: sitepagedata.md

## Remarks

Web parts can define their own required properties under **data**.

For more information about pages, see [sitePage](sitepage.md).
<!--
{
  "type": "#page.annotation",
  "description": "Defines a control resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Control",
  "suppressions": []
}
-->


