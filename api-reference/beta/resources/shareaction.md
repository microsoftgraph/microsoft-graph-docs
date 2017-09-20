---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ShareAction
---
# ShareAction resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ShareAction** resource provides information about an [activity][activity] that shared an item.

[activity]: itemActivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.shareAction"
}-->

```json
{
  "recipients": [{"@odata.type": "microsoft.graph.identitySet"}]
}
```

## Properties

| Property name | Type                       | Description
|:--------------|:---------------------------|:-----------------------------
| recipients    | [identitySet][] collection | The identities the item was shared with in this action.

[identitySet]: identitySet.md

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!-- {
  "type": "#page.annotation",
  "description": "The ShareAction object provides information about who an item was shared to in a share action.",
  "keywords": "activities,activity,action,mention",
  "section": "documentation",
  "tocPath": "Resources/ShareAction"
} -->
