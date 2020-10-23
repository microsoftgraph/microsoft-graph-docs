---
author: daspek
ms.author: dspektor
title: itemActionStat resource type
description: The itemActionStat object provides aggregate details about an action over a period of time.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# itemActionStat resource type

Namespace: microsoft.graph

The **itemActionStat** resource provides aggregate details about an action over a period of time.

## Properties

| Property    | Type  | Description
|:------------|:------|:-------------------------------------------------------
| actionCount | Int32 | The number of times the action took place. Read-only.
| actorCount  | Int32 | The number of distinct actors that performed the action. Read-only.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.itemActionStat",
}-->

```json
{
  "actionCount": 123,
  "actorCount": 60
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The itemActionStat object provides aggregate details about an action over a period of time.",
  "keywords": "activities,activity,action,analytics",
  "section": "documentation",
  "tocPath": "Resources/itemActionStat",
  "suppressions": []
}
-->

