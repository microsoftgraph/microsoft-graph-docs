---
author: daspek
ms.author: dspektor
title: renameAction resource type
description: The renameAction object provides information about an activity that renamed an item.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# renameAction resource type

Namespace: microsoft.graph

The presence of the **renameAction** resource on an [**itemActivity**][activity] indicates that the activity renamed an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| oldName       | string | The previous name of the item.
| newName       | string | The new name of the item.

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

<!--
{
  "type": "#page.annotation",
  "description": "The renameAction object provides information about an activity that renamed an item.",
  "keywords": "activities,activity,action,rename,renamed",
  "section": "documentation",
  "tocPath": "Resources/renameAction",
  "suppressions": []
}
-->

