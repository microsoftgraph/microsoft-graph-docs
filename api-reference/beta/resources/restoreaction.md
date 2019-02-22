---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: RestoreAction
localization_priority: Normal
---
# RestoreAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **RestoreAction** resource on an [**itemActivity**][activity] indicates that the activity restored an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemactivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.restoreAction"
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
  "description": "The RestoreAction object provides information about an activity that restored an item.",
  "keywords": "activities,activity,action,restore,undelete",
  "section": "documentation",
  "tocPath": "Resources/RestoreAction",
  "suppressions": [
    "Error: /api-reference/beta/resources/restoreaction.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
