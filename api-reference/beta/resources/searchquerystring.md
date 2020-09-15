---
title: "searchQueryString resource type"
description: "searchQueryString"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchQueryString resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!WARNING]
>The **searchQueryString** is deprecated. The query string should be now populated on the **queryString** property of the [searchQuery](searchquery.md) entity.

The search terms for the query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|query|String|Contains the actual search terms of the request.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchQueryString",
  "baseType": null
}-->

```json
{
  "query": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchQueryString resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->