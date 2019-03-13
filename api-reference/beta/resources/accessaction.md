---
author: daspek
ms.author: dspektor
ms.date: 09/12/2018
title: AccessAction
localization_priority: Normal
doc_type: resourcePageType
---
# accessAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **accessAction** resource on an [**itemActivity**][activity] indicates that the activity accessed an item.

>**Note:** Access activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

This resource type has no properties.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.accessAction"
}-->

```json
{
}
```


<!--
{
  "type": "#page.annotation",
  "description": "The AccessAction object provides information about accesses of an item.",
  "keywords": "activities,activity,action,access",
  "section": "documentation",
  "tocPath": "Resources/AccessAction",
  "suppressions": [
    "Error: /api-reference/beta/resources/accessaction.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
