---
title: "searchRequest resource type"
description: "The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

The search request to be sent to the query endpoint.

It contains the type of entities expected in the response, the underlying sources, the paging parameters, the sort options, the aggregations required and the fields requested and the actual search query.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|:------------|
|entityTypes|entityType collection| Possible values are: `list`, `site`, `listItem`, `message`, `event`, `drive`, `driveItem`, `externalItem`. **Required**.|
|contentSources|String collection|Contains the connection to be targeted. <br>Respect the following format : `/external/connections/connectionid` where `connectionid` is the ConnectionId been defined in the Connectors Administration <br> Note : contentSource is only applicable when entityType=`externalItem`. |
|query|[searchQuery](searchquery.md)|Contains the query terms. **Required**.|
|from|Int32|Specifies the offset for the search results. Offset 0 returns the very first result.|
|size|Int32|The size of the page to be retrieved.|
|fields|String collection |Contains the fields to be returned for earch resource object. Note this is applicable for all entityTypes, such as `list`, `site`, `listItem`, `message`, `event`, `drive`, `driveItem`, `externalItem`.|
|sortProperties|[sortProperty](sortProperty.md) collection|Contains the ordered collection of fields and direction to sort results. There can be at most sortProperties in the Collection.|
|aggregations|[aggregationOption](aggregationOption.md) collection|Specifies which aggregations (also known as refiners) to be retuned alongside the search results.|
|aggregationFilters|String collection|Contains the list of **aggregationsFilterToken** obtained from the [searchBucket](searchBucket.md) which will filter down search results to results contained in the specified bucket|
|enableTopResults|Boolean|This triggers hybrid sort for messages : the first 3 messages are the most relevant. This property is only applicable to entityType=`message`.|
|stored_fields (deprecated)|String collection |This is now replaced byse the **fields** property. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchRequest",
  "baseType": null
}-->

```json
{
  "entityTypes": ["String"],
  "contentSources": ["String"],
  "query": {"@odata.type": "microsoft.graph.searchQuery"},
  "from": 1024,
  "size": 1024,
  "fields": ["String"],
  "sortProperties": [{"@odata.type": "microsoft.graph.sortProperty"}],
  "aggregations": [{"@odata.type": "microsoft.graph.aggregationOption"}],
  "aggregationFilters": ["String"],
  "enableTopResults": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
