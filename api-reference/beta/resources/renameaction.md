---
author: daspek
description: "The presence of the RenameAction resource on an itemActivity indicates that the activity renamed an item."
ms.date: 09/14/2017
title: RenameAction
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---

# RenameAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **RenameAction** resource on an [**itemActivity**][activity] indicates that the activity renamed an item.

[activity]: itemactivity.md

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

<!--
{
  "type": "#page.annotation",
  "description": "The RenameAction object provides information about an activity that renamed an item.",
  "keywords": "activities,activity,action,rename,renamed",
  "section": "documentation",
  "tocPath": "Resources/RenameAction",
  "suppressions": []
}
-->


