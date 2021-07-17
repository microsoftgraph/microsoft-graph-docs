---
title: "qna resource type"
description: "Question and Answer search resource"
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# qna resource type

Namespace: microsoft.graph.search

Q&As are administrative answer results in the search results page which provide answers for specific search keywords. Q&As allow administrators to answer the user's questions directly in search instead of providing a link to a webpage. A Q&A has many properties which allow administrators to make common resources more accessible in their organization.\
\
\


Inherits from [searchAnswer](../resources/searchanswer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List qnas](../api/search-qna-list-qnas.md)|[microsoft.graph.search.qna](../resources/qna.md) collection|Get a list of the [qna](../resources/qna.md) objects and their properties.|
|[Create qna](../api/search-qna-post-qnas.md)|[microsoft.graph.search.qna](../resources/qna.md)|Create a new [qna](../resources/qna.md) object.|
|[Get qna](../api/search-qna-get-qnas.md)|[microsoft.graph.search.qna](../resources/qna.md)|Read the properties and relationships of a [qna](../resources/qna.md) object.|
|[Update qna](../api/search-qna-update-qnas.md)|[microsoft.graph.search.qna](../resources/qna.md)|Update the properties of a [qna](../resources/qna.md) object.|
|[Delete qna](../api/search-qna-delete-qnas.md)|None|Deletes a [qna](../resources/qna.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Guid id of the qna. Inherited from [entity](../resources/entity.md).|
|displayName|String|Question displayed in search results. Inherited from [searchAnswer](../resources/searchanswer.md).|
|description|String|Answer displayed in search results. Inherited from [searchAnswer](../resources/searchanswer.md).|
|webUrl|String|Qna url link. When users click this qna in search results they will go to this url. Inherited from [searchAnswer](../resources/searchanswer.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the qna. Inherited from [searchAnswer](../resources/searchanswer.md). Read only. |
|lastModifiedDateTime|DateTimeOffset| Timestamp of when the qna is created or edited. Inherited from [searchAnswer](../resources/searchanswer.md). Read only.|
|availabilityStartDateTime|DateTimeOffset|Date qna will start to appear as a search result. Set as null for always available.|
|availabilityEndDateTime|DateTimeOffset|Date qna will stop appearing as a search result. Set as null for always available.|
|languageTags|String collection|List of countries or regions able to view this qna.|
|platforms|microsoft.graph.platform collection|List of devices and OS able to view this qna. Possible values are: `unknown`, `ios`, `android`, `windows`, `windowsMobile`, `macOS`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/answerVariant.md) collection|Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/answerkeyword.md)|Keywords that trigger this qna to appear in search results.|
|state|String|State of the qna. Possible values are: `published`, `draft`, `excluded`.|
|isSuggested|Boolean| True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read only.|
|groupIds|String collection|List of security groups able to view this qna.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.qna",
  "baseType": "microsoft.graph.search.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.qna",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "availabilityStartDateTime": "String (timestamp)",
  "availabilityEndDateTime": "String (timestamp)",
  "languageTags": [
    "String"
  ],
  "platforms": [
    "String"
  ],
  "targetedVariations": [
    {
      "@odata.type": "microsoft.graph.search.answerVariant"
    }
  ],
  "keywords": {
    "@odata.type": "microsoft.graph.search.answerKeyword"
  },
  "state": "String",
  "isSuggested": "Boolean",
  "groupIds": [
    "String"
  ]
}
```

