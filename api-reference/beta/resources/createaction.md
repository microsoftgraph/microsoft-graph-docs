---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: CreateAction
localization_priority: Normal
doc_type: resourcePageType
---

# CreateAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **CreateAction** resource on an [**itemActivity**][activity] indicates that the activity created an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemactivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.createAction"
}-->

```json
{
}
```

## Properties

None. This facet is a null or not-null value and contains no properties.

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The CreateAction object provides information about the creation of an item.",
  "keywords": "activities,activity,action,create,creation",
  "section": "documentation",
  "tocPath": "Resources/CreateAction",
  "suppressions": [
    "Error: /api-reference/beta/resources/createaction.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
