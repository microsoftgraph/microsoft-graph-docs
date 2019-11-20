---
title: "searchHit resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHit resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a single result within the list of search results.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|_id|String|The internal identifier for the item.|
|_score|Int32|The score or the order of the result.|
|_sortField|String|The sort order used. It can be DateTime or Relevance.|
|_summary|String|A summary of the result (if summary is available).|
|_source|[entity](entity.md)|The underlying Graph representation of the search result.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchHit",
  "baseType": null
}-->

```json
{
  "_id": "String",
  "_score": 1024,
  "_sortField": "String",
  "_summary": "String",
  "_source": { "@odata.type": "microsoft.graph.entity" }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchHit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->