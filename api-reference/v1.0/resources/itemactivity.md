---
author: daspek
ms.author: dspektor
title: itemActivity resource type
description: The itemActivity object provides information about an activity that took place on an item.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# itemActivity resource type

Namespace: microsoft.graph

The **itemActivity** resource provides information about activities that took place on an item or within a container.
Currently only available on SharePoint and OneDrive for Business.

The actions that took place within an itemActivity are detailed in the [itemActionSet][] property.

>**Note:** **itemActivity** is currently only available on SharePoint and OneDrive for Business.

[itemActionSet]: itemactionset.md#properties

## Properties

| Property | Type                    | Description
|:---------|:------------------------|:----------------------------------------
| id       | string                  | The unique identifier of the activity. Read-only.
| access   | [accessAction][]        | An item was accessed.
| actor    | [identitySet][]         | Identity of who performed the action. Read-only.
| activityDateTime    | DateTimeOffset | Details about when the activity took place. Read-only.

[accessAction]: accessaction.md
[identitySet]: identityset.md

## Relationships

| Relationship name | Type          | Description
|:------------------|:--------------|:-----------------------------------------
| driveItem         | [driveItem][] | Exposes the **driveItem** that was the target of this activity.
| listItem          | [listItem][]  | Exposes the **listItem** that was the target of this activity.

[driveItem]: driveitem.md
[listItem]: listitem.md

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
  "actor": {"@odata.type": "microsoft.graph.identitySet"},
  "driveItem": {"@odata.type": "microsoft.graph.driveItem"},
  "listItem": {"@odata.type": "microsoft.graph.listItem"},
  "activityDateTime": {"@odata.type": "String (timestamp)"}
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The itemActivity object provides information about an activity that took place on an item.",
  "keywords": "activities,activity,action",
  "section": "documentation",
  "tocPath": "Resources/itemActivity",
  "suppressions": []
}
-->

