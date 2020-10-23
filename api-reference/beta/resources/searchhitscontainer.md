---
title: "searchHitsContainer resource type"
description: "Represent the list of search results."
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
|hits|[searchHit](searchhit.md) collection|A collection of the search results.|
|moreResultsAvailable|Boolean|Provides information if more results are available. Based on this information, you can adjust the **from** and **size** properties of the [searchRequest](searchrequest.md) accordingly.|
|total|Int32|The total number of results. Note this is not the number of results on the page, but the total number of results satisfying the query.|
|aggregations|[searchAggregation](searchaggregation.md) collection|Contains the collection of aggregations computed based on the provided [aggregationOption](aggregationoption.md) specified in the request.|

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


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchHitsContainer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


