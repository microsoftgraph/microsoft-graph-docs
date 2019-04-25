---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ItemActionStat
localization_priority: Normal
---
# itemActionStat resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **itemActionStat** resource provides aggregate details about an action over a period of time.

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

## Properties

| Property    | Type  | Description
|:------------|:------|:-------------------------------------------------------
| actionCount | Int32 | The number of times the action took place. Read-only.
| actorCount  | Int32 | The number of distinct actors that performed the action. Read-only.

<!--
{
  "type": "#page.annotation",
  "description": "The ItemActionStat object provides aggregate details about an action over a period of time.",
  "keywords": "activities,activity,action,analytics",
  "section": "documentation",
  "tocPath": "Resources/ItemActionStat",
  "suppressions": []
}
-->
