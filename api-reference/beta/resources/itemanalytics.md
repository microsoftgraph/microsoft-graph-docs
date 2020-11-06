---
author: daspek
description: "The itemAnalytics resource provides analytics about activities that took place on an item. This resource is currently only available on SharePoint and OneDrive for Business."
ms.date: 09/14/2017
title: ItemAnalytics
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# itemAnalytics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **itemAnalytics** resource provides analytics about activities that took place on an item. This resource is currently only available on SharePoint and OneDrive for Business.

You can also use the [getActivitiesByInterval][] API to retrieve analytics over a custom time range or interval.

>**Note:** The **itemAnalytics** resource is not yet available in all [national deployments](/graph/deployments).

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.itemAnalytics",
  "@type.aka": "oneDrive.analytics"
}-->

```json
{
  "allTime": {"@odata.type": "microsoft.graph.itemActivityStat"},
  "lastSevenDays": {"@odata.type": "microsoft.graph.itemActivityStat"}
}
```

## Properties

| Property      | Type                 | Description
|:--------------|:---------------------|:--------------------------------------
| allTime       | [itemActivityStat][] | Analytics over the item's lifespan.
| lastSevenDays | [itemActivityStat][] | Analytics for the last seven days.

[itemActivityStat]: itemactivitystat.md


[getActivitiesByInterval]: ../api/itemactivity-getbyinterval.md

<!--
{
  "type": "#page.annotation",
  "description": "The ItemAnalytics object provides analytics about activities that took place on an item.",
  "keywords": "activities,activity,action,analytics",
  "section": "documentation",
  "tocPath": "Resources/ItemAnalytics",
  "suppressions": []
}
-->


