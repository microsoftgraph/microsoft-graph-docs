---
title: "searchHit resource type"
description: "Description of searchHit entity"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

Represents a single result within the list of search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hitId|String|The internal identifier for the item.|
|rank|Int32|The rank or the order of the result.|
|contentSource|String|The name of the content source which the **externalItem** is part of .|
|summary|String|A summary of the result, if a summary is available.|
|resource|[entity](entity.md)|The underlying Microsoft Graph representation of the search result.|
|_id (deprecated)|String| Renamed as **hitId**. The internal identifier for the item.|
|_score (deprecated)|Int32|Renamed as **rank**. The score or the order of the result.|
|_summary (deprecated)|String|Renamed as **summary**. A summary of the result (if summary is available).|
|_sortField (deprecated)|String|This property has been removed.|
|_source (deprecated)|[entity](entity.md)|Renamed as **resource**. The underlying Graph representation of the search result.|

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
  "hitId": "String",
  "rank": 1,
  "summary": "String",
  "contentSource": "String",
  "resource": { "@odata.type": "microsoft.graph.entity" },
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

