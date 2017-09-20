---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: RestoreAction
---
# RestoreAction resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The presence of the **RestoreAction** resource on an [**itemActivity**][activity] indicates that the activity restored an item.

**Note**: While this resource is empty today, in future API revisions it may be populated with additional properties.

[activity]: itemActivity.md

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

<!-- {
  "type": "#page.annotation",
  "description": "The RestoreAction object provides information about an activity that restored an item.",
  "keywords": "activities,activity,action,restore,undelete",
  "section": "documentation",
  "tocPath": "Resources/RestoreAction"
} -->
