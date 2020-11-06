---
title: "aggregationOption resource type"
description: "Specifies the aggregationOption entity"
localization_priority: Normal
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# aggregationOption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies which aggregations should be returned alongside the search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|field|String|Specifies the field in the schema of the specified entity type that aggregation should be computed on. Required.|
|size|Int32|The number of [searchBucket](searchBucket.md) resources to be returned. This is not required when the range is provided manually in the search request. Optional.|
|bucketDefinition|[bucketAggregationDefinition](bucketaggregationdefinition.md)|Specifies the criteria to compute an aggregation. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.aggregationOption",
  "baseType": null
}-->

```json
{
  "field": "String",
  "size": 1024,
  "bucketDefinition": {"@odata.type": "microsoft.graph.bucketAggregationDefinition"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sortProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->