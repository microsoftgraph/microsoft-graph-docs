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
|field|String|Specifies which field the aggregation should be computed on. Required.|
|size|Int32|The number of [searchBucket](searchBucket.md) to be returned. This is not required when the range are provided manualy in the request specified. Optional.|
|bucketDefinition|[bucketAggregationDefinition](bucketaggregationdefinition.md)|Specifies the criterias to compute the aggregations. Optional.|

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