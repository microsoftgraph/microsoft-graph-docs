---
author: daspek
ms.author: dspektor
title: moveAction resource type
description: The MoveAction object provides information about an activity that moved an item.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# moveAction resource type

Namespace: microsoft.graph

The presence of the **moveAction** resource on an [**itemActivity**][activity] indicates that the activity moved an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| from          | string | The name of the location the item was moved from.
| to            | string | The name of the location the item was moved to.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.moveAction"
}-->

```json
{
  "from": "string",
  "to": "string"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The MoveAction object provides information about an activity that moved an item.",
  "keywords": "activities,activity,action,move,moved",
  "section": "documentation",
  "tocPath": "Resources/MoveAction",
  "suppressions": []
}
-->

