---
title: "recurrencePattern resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# recurrencePattern resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dayOfMonth|Int32|**TODO: Add Description**|
|daysOfWeek|dayOfWeek collection|**TODO: Add Description**|
|firstdayOfWeek|dayOfWeek|**TODO: Add Description**. Possible values are: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`.|
|index|weekIndex|**TODO: Add Description**. Possible values are: `first`, `second`, `third`, `fourth`, `last`.|
|interval|Int32|**TODO: Add Description**|
|month|Int32|**TODO: Add Description**|
|type|recurrencePatternType|**TODO: Add Description**. Possible values are: `daily`, `weekly`, `absoluteMonthly`, `relativeMonthly`, `absoluteYearly`, `relativeYearly`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recurrencePattern"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recurrencePattern",
  "type": "String",
  "interval": "Integer",
  "month": "Integer",
  "dayOfMonth": "Integer",
  "daysOfWeek": [
    "String"
  ],
  "firstdayOfWeek": "String",
  "index": "String"
}
```

