---
title: "resourceReference resource type"
description: "Complex type containing properties of Insights."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# resourceReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [itemInsights](iteminsights.md)

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.resourceReference"
}-->
```json
{
  "webUrl": "string",
  "id": "string",
  "type": "string"
}
```

## Properties

| Property      | Type      | Description  |
| ------------- |-----------| -------------|
| webUrl      	| String	| A URL leading to the referenced item. |
| id     		| String    | The item's unique identifier.           |
| type 			| String   	| A string value that can be used to classify the item, such as "microsoft.graph.driveItem" |


