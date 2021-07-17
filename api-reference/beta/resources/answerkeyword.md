---
title: "answerKeyword resource type"
description: "answerKeyword"
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# answerKeyword resource type

Namespace: microsoft.graph.search

Answer Keyword is used to configure triggers for a search answer to appear on search.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|keywords|String collection|A collection of keywords used to trigger the search answer.|
|matchSimilarKeywords|Boolean|If similar words in the search term to the keywords should trigger the search answer.|
|reservedKeywords|String collection|Unique keywords that will guarantee the search answer is triggered.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.search.answerKeyword"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.answerKeyword",
  "keywords": [
    "String"
  ],
  "reservedKeywords": [
    "String"
  ],
  "matchSimilarKeywords": "Boolean"
}
```

