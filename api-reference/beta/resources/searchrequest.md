---
title: "searchRequest resource type"
description: "The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query."
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchRequest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The search request to be sent to the query endpoint. It contains the type of entities expected in the response, the underlying sources, the paging parameters, the fields request and the actual search query.

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|stored_fields|String collection |Contains the fields to be returned for earch _so urces object. Note this is only applicable when entityType=`externalItem` is specified in the response.|
|contentSources|String collection|Contains the connection to be targeted. <br>Respect the following format : `/external/connections/connectionid` where `connectionid` is the ConnectionId been defined in the Connectors Administration <br> Note contentSource is only applicable when entityType=`externalItem`. |
|enableTopResults|Boolean|This triggers hybrid sort for messages : the first 3 messages are the most relevant<br> This is only applicable for entityType=`message`.|
|entityTypes|`entityType` collection| Possible values are: `event`, `message`, `driveItem`, `externalFile`, `externalItem`.|
|from|Int32|Specifies the offset for the search results. Offset 0 returns the very first result.|
|query|[searchQuery](searchquery.md)|Contains the query terms.|
|size|Int32|The size of the page to be retrieved.|

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
  "stored_fields": ["String"],
  "contentSources": ["String"],
  "entityTypes": ["String"],
  "query": {"@odata.type": "microsoft.graph.searchQuery"},
  "from": 1024,
  "size": 1024,
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
