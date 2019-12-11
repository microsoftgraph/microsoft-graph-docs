---
title: "searchHitsContainer resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "nmoreau"
ms.prod: ""
doc_type: "resourcePageType"
---

# searchHitsContainer resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the list of search results.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hits|[searchHit](searchhit.md) collection|Encasulate the Search results.|
|moreResultsAvailable|Boolean|Provides information if more results are available. In that case you can increase the "from" and "to" offset.|
|total|Int32|The total number of results. Note this is not the number on results in the page, but the total number of results satisfying the query.|

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
  "total": 1024
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