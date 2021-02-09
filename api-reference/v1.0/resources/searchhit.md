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

Represents a single result within the list of search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hitId|String|The internal identifier for the item.|
|rank|Int32|The rank or the order of the result.|
|contentSource|String|The name of the content source which the **externalItem** is part of .|
|summary|String|A summary of the result, if a summary is available.|
|resource|[entity](entity.md)|The underlying Microsoft Graph representation of the search result.|

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
  "resource": { "@odata.type": "microsoft.graph.entity" }
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

