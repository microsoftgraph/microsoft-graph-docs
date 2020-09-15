---
title: "bucketAggregationDefinition resource type"
description: "Provides the details on how the agregations should be generated in the results"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# bucketAggregationDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the details on how the agregations should be generated in the results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|sortBy|bucketAggregationSortProperty| The possible values are `count` to sort by the number of matches in the aggregation, `keyAsString`to sort alphabeticaly based on the key in the aggregation, `keyAsNumber` for numerical sorting based on the key in the aggregation. Required.
|isDescending|Boolean|Specifies that the sort order is descending. The default sort order is ascending. Optional.|
|prefixFilter|String|A filter to define a matching criteria. The key should start with the specified prefix to be returned in the response. Optional.|
|minimumCount|Int32|The minimum number of item that should be present in the aggregation to be returned as a bucket. Optional.|
|ranges|[bucketAggregationRange](bucketaggregationrange.md) collection|Specifies the manual ranges to compute the aggregations. This is only valid for non string refiners : dates and numeric. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bucketAggregationDefinition",
  "baseType": null
}-->

```json
{
  "sortBy": "String",
  "isDescending": true,
  "prefixFilter": "String",
  "ranges": [{"@odata.type": "microsoft.graph.bucketAggregationRange"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sortProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->