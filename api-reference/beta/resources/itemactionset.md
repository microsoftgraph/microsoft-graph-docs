---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ItemActionSet
---
# ItemActionSet resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ItemActionSet** resource provides information about the actions that made up an [activity][itemActivity] on an item.

[itemActivity]: itemActivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "keyProperty": "id",
  "@type": "microsoft.graph.itemActionSet",
  "@type.aka": "oneDrive.action"
}-->

```json
{
  "comment": {"@odata.type": "microsoft.graph.commentAction"},
  "create": {"@odata.type": "microsoft.graph.createAction"},
  "delete": {"@odata.type": "microsoft.graph.deleteAction"},
  "edit": {"@odata.type": "microsoft.graph.editAction"},
  "mention": {"@odata.type": "microsoft.graph.mentionAction"},
  "move": {"@odata.type": "microsoft.graph.moveAction"},
  "rename": {"@odata.type": "microsoft.graph.renameAction"},
  "restore": {"@odata.type": "microsoft.graph.restoreAction"},
  "share": {"@odata.type": "microsoft.graph.shareAction"},
  "version": {"@odata.type": "microsoft.graph.versionAction"},
  
}
```

## Properties

Below are the actions that are available today.
New actions may get logged in the future, so make sure your app is tolerant of handling an **itemActionSet** without any actions that your app understands.

| Property name | Type              | Description
|:--------------|:------------------|:-----------------------------------------
| comment       | [commentAction][] | A comment was added to the item.
| create        | [createAction][]  | An item was created.
| delete        | [deleteAction][]  | An item was deleted.
| edit          | [editAction][]    | An item was edited.
| mention       | [mentionAction][] | A user was mentioned in the item.
| move          | [moveAction][]    | An item was moved.
| rename        | [renameAction][]  | An item was renamed.
| restore       | [restoreAction][] | An item was restored.
| share         | [shareAction][]   | An item was shared.
| version       | [versionAction][] | An item was versioned.

[commentAction]: commentAction.md
[createAction]: createAction.md
[deleteAction]: deleteAction.md
[editAction]: editAction.md
[mentionAction]: mentionAction.md
[moveAction]: moveAction.md
[renameAction]: renameAction.md
[restoreAction]: restoreAction.md
[shareAction]: shareAction.md
[versionAction]: versionAction.md

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!-- {
  "type": "#page.annotation",
  "description": "The ItemActionSet object provides information about the actions that took place as part of an activity on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/ItemActionSet"
} -->
