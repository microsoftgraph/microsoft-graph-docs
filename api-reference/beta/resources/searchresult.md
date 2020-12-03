---
author: JeremyKelley
description: "The SearchResult resource indicates than an item is the response to a search query."
ms.date: 09/10/2017
title: SearchResult
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# SearchResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **SearchResult** resource indicates than an item is the response to a search query.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "onClickTelemtryUrl" ],
  "@odata.type": "microsoft.graph.searchResult"
}-->

```json
{
  "onClickTelemetryUrl": "url"
}
```

## Properties

| Property            | Type   | Description
|:--------------------|:-------|:----------------------------------------------
| onClickTelemetryUrl | String | A callback URL that can be used to record telemetry information. The application should issue a GET on this URL if the user interacts with this item to improve the quality of results.

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!--
{
  "type": "#page.annotation",
  "description": "The search result facet indicates an item is from a search.",
  "keywords": "search result facet",
  "section": "documentation",
  "tocPath": "Facets/SearchResult",
  "suppressions": []
}
-->


