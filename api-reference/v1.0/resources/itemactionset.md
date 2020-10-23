---
author: daspek
ms.author: dspektor
title: ItemActionSet resource type
description: The itemActionSet object provides information about the actions that took place as part of an activity on an item.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# itemActionSet resource type

Namespace: microsoft.graph

The **itemActionSet** resource provides information about the actions that made up an [activity][itemActivity] on an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[itemActivity]: itemactivity.md

## Properties

The following actions are currently available. Because new actions might be added in the future, make sure that your app can handle an **itemActionSet** that includes unknown actions.

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

[commentAction]: commentaction.md
[createAction]: createaction.md
[deleteAction]: deleteaction.md
[editAction]: editaction.md
[mentionAction]: mentionaction.md
[moveAction]: moveaction.md
[renameAction]: renameaction.md
[restoreAction]: restoreaction.md
[shareAction]: shareaction.md
[versionAction]: versionaction.md

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

<!--
{
  "type": "#page.annotation",
  "description": "The itemActionSet object provides information about the actions that took place as part of an activity on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/itemActionSet",
  "suppressions": []
}
-->

