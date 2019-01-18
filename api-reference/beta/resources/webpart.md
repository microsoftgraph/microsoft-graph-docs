---
author: rahmit
ms.author: rahmit
ms.date: 09/01/2018
title: WebPart
localization_priority: Normal
ms.prod: "sharepoint"
---
# webPart resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **webPart** resource represents type and rendering information for a web part on a [sitePage](sitepage.md).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.webPart"
}-->

```json
{
  "type": "string (guid)",
  "data": {
    "instanceId": "string (guid) (optional)"
  }
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
<!-- {
  "type": "#page.annotation",
  "description": "Defines a control resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Control"
} -->
