---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: RenameAction
---
# RenameAction resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The presence of the **RenameAction** resource on an [**itemActivity**][activity] indicates that the activity renamed an item.

[activity]: itemActivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.renameAction"
}-->

```json
{
  "oldName": "string",
  "newName": "string"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| oldName       | string | The previous name of the item.
| newName       | string | The new name of the item.

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!-- {
  "type": "#page.annotation",
  "description": "The RenameAction object provides information about an activity that renamed an item.",
  "keywords": "activities,activity,action,rename,renamed",
  "section": "documentation",
  "tocPath": "Resources/RenameAction"
} -->
