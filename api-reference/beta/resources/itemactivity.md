---
author: daspek
description: "The ItemActivity resource provides information about activities that took place on an item or within a container."
ms.date: 09/14/2017
title: ItemActivity
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# ItemActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
  "access": "microsoft.graph.accessAction",
  "action": {"@odata.type": "microsoft.graph.itemActionSet"},
  "actor": {"@odata.type": "microsoft.graph.identitySet"},
  "driveItem": {"@odata.type": "microsoft.graph.driveItem"},
  "listItem": {"@odata.type": "microsoft.graph.listItem"},
  "location": {"@odata.type": "microsoft.graph.location"},
  "times": {"@odata.type": "microsoft.graph.itemActivityTimeSet"}
}
```

## Properties

| Property | Type                    | Description
|:---------|:------------------------|:----------------------------------------
| id       | string                  | The unique identifier of the activity. Read-only.
| access   | [accessAction][]        | An item was accessed.
| action   | [itemActionSet][]       | Details about the action that took place. Read-only.
| actor    | [identitySet][]         | Identity of who performed the action. Read-only.
| location | [location][]            | Physical location where the action was performed. Read-only.
| times    | [itemActivityTimeSet][] | Details about when the activity took place. Read-only.

[identitySet]: identityset.md
[itemActionSet]: itemactionset.md
[itemActivityTimeSet]: itemactivitytimeset.md

## Relationships

| Relationship name | Type          | Description
|:------------------|:--------------|:-----------------------------------------
| driveItem         | [driveItem][] | Exposes the **driveItem** that was the target of this activity.
| listItem          | [listItem][]  | Exposes the **listItem** that was the target of this activity.

[driveItem]: driveitem.md
[listItem]: listitem.md

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

[accessAction]: accessaction.md
[commentAction]: commentaction.md
[createAction]: createaction.md
[deleteAction]: deleteaction.md
[editAction]: editaction.md
[location]: location.md
[mentionAction]: mentionaction.md
[moveAction]: moveaction.md
[renameAction]: renameaction.md
[restoreAction]: restoreaction.md
[shareAction]: shareaction.md
[versionAction]: versionaction.md

## Remarks

**ItemActivity** is currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The ItemActivity object provides information about an activity that took place on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/ItemActivity",
  "suppressions": []
}
-->


