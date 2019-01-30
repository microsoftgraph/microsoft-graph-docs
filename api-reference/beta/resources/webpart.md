---
author: rahmit
ms.author: rahmit
ms.date: 09/01/2018
title: WebPart
localization_priority: Normal
ms.prod: "sharepoint"
---
# webPart resource

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **webPart** resource represents type and rendering information for a web part on a [sitePage](sitepage.md).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  
    ],
  "@odata.type": "microsoft.graph.webPart"
}-->

```json
{
  "type": "String (identifier)",
  "data": {
    "instanceId": "string (guid) (optional)"
  }
}
```

## Properties

| Property                | Type             | Description
|:------------------------|:-----------------|:----------------------------------
| **type**                | String (identifier)         | A unique identifier specifying the webPart type. Read-only.
| **data**                | [sitePageData](sitepagedata.md) | The required properties for the webPart (varies by webPart)

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
  "suppressions": [
    "Error: /api-reference/beta/resources/webpart.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
