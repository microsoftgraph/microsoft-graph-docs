---
title: "searchHitsContainer resource type"
description: "Description on searchHitContainer"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHitsContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the list of search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hits|[searchHit](searchhit.md) collection|Encasulate the Search results.|
|moreResultsAvailable|Boolean|Provides information if more results are available. In that case you can increase the "from" and "to" offset.|
|total|Int32|The total number of results. Note this is not the number on results in the page, but the total number of results satisfying the query.|
|aggregations|[searchAggregation](searchaggregation.md) collection|Contains the collection of aggregations computed based on the provided [aggregationOption](aggregationOption.md) specified in the request|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchHitsContainer",
  "baseType": null
}-->


```json
{
  "hits": [{"@odata.type": "microsoft.graph.searchHit"}],
  "moreResultsAvailable": true,
  "total": 1024,
  "aggregations": [{"@odata.type": "microsoft.graph.searchAggregation"}]
}
```
