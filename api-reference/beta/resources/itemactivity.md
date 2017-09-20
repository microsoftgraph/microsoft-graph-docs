---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ItemActivity
---
# ItemActivity resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ItemActivity** resource provides information about activities that took place on an item or within a container.
Currently only available on SharePoint and OneDrive for Business.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "keyProperty": "id",
  "@type": "microsoft.graph.itemActivity",
  "@type.aka": "oneDrive.activityEntity"
}-->

```json
{
  "id": "string (identifier)",
  "action": {"@odata.type": "microsoft.graph.itemActionSet"},
  "actor": {"@odata.type": "microsoft.graph.identitySet"},
  "driveItem": {"@odata.type": "microsoft.graph.driveItem"},
  "listItem": {"@odata.type": "microsoft.graph.listItem"},
  "times": {"@odata.type": "microsoft.graph.itemActivityTimeSet"}
}
```

## Properties

| Property | Type                    | Description
|:---------|:------------------------|:----------------------------------------
| id       | string                  | The unique identifier of the activity. Read-only.
| action   | [itemActionSet][]       | Details about the action that took place. Read-only.
| actor    | [identitySet][]         | Identity of who performed the action. Read-only.
| times    | [itemActivityTimeSet][] | Details about when the activity took place. Read-only.

[identitySet]: identitySet.md
[itemActionSet]: itemActionSet.md
[itemActivityTimeSet]: itemActivityTimeSet.md

## Relationships

| Relationship name | Type          | Description
|:------------------|:--------------|:-----------------------------------------
| driveItem         | [driveItem][] | Exposes the **driveItem** that was the target of this activity.
| listItem          | [listItem][]  | Exposes the **listItem** that was the target of this activity.

[driveItem]: driveItem.md
[listItem]: listItem.md

## Actions

The actions that took place within an activity are detailed in the **action** property.
Below are the actions that are available today.
New actions may get logged in the future, so make sure your app is tolerant of handling an **itemActivity** without any actions that your app understands.

| Action name | Type              | Description
|:------------|:------------------|:-------------------------------------------
| comment     | [commentAction][] | A comment was added to the item.
| create      | [createAction][]  | An item was created.
| delete      | [deleteAction][]  | An item was deleted.
| edit        | [editAction][]    | An item was edited.
| mention     | [mentionAction][] | A user was mentioned in the item.
| move        | [moveAction][]    | An item was moved.
| rename      | [renameAction][]  | An item was renamed.
| restore     | [restoreAction][] | An item was restored.
| share       | [shareAction][]   | An item was shared.
| version     | [versionAction][] | An item was versioned.

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

**ItemActivity** is currently only available on SharePoint and OneDrive for Business.

<!-- {
  "type": "#page.annotation",
  "description": "The ItemActivity object provides information about an activity that took place on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/ItemActivity"
} -->
