---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: EditAction
localization_priority: Normal
doc_type: resourcePageType
---
# EditAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **EditAction** resource on an [**itemActivity**][activity] indicates that the activity edited an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemactivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.editAction"
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
  "description": "The EditAction object provides information about an activity that edited an item.",
  "keywords": "activities,activity,action,edit,modify",
  "section": "documentation",
  "tocPath": "Resources/EditAction",
  "suppressions": [
    "Error: /api-reference/beta/resources/editaction.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
