---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: SearchResult
localization_priority: Normal
---
# SearchResult resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **SearchResult** resource indicates than an item is the response to a search query.

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
  "suppressions": [
    "Error: /api-reference/beta/resources/searchresult.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
