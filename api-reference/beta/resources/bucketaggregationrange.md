---
title: "bucketAggregationRange resource type"
description: "Enables to specify some manual ranges in the aggregation request. This in only applicable to non string refiners : numeric and dates."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# bucketAggregationRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enables to specify some manual ranges in the aggregation request. This in only applicable to non string refiners : numeric and dates.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|from|String| Defines the lower bound from which the aggregation will be computed. This can be a numeric value or a date specified in this format. Required.|
|to|String| Defines the lower bound from which the aggregation will be computed. This can be a numeric value or a date specified in this format. Required.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bucketAggregationRange",
  "baseType": null
}-->

```json
{
  "from": "String",
  "to": "String" 
}
```
