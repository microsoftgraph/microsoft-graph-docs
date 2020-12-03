---
title: "insightIdentity"
description: "Complex type containing properties of Shared items."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# insightIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [sharedInsight](insights-shared.md) items. 

## JSON representation
Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.insightIdentity"
}-->
```json
{
  "displayName": "string",
  "id": "string",
  "address": "string"
}
```

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| displayName      	| String	      | The display name of the user who shared the item. |
| id     		  | String        | The id of the user who shared the item.     |
| address      	      | String	    | The email address of the user who shared the item.  |


