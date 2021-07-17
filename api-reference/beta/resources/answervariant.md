---
title: "answerVariant resource type"
description: "answerVariant"
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# answerVariant resource type

Namespace: microsoft.graph.search

An answer variant can be used to to change certain fields of a search answer based on country or platform.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Answer variation description shown on search results page.|
|displayName|String|Answer variation name displayed in search results.|
|webUrl|String|Answer variation url link. When users click this answer variation in search results they will go to this url.|
|languageTags|String collection|List of countries or regions able to view this search answer.|
|platforms|microsoft.graph.platform collection|List of devices and OS able to view this qna. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.search.answerVariant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.answerVariant",
  "displayName": "String",
  "webUrl": "String",
  "description": "String",
  "languageTag": "String",
  "platform": "String"
}
```

