---
title: "question abstract type"
description: "The abstract base type for types used in the questions of an access package assignment policy."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# question abstract type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the questions property of an [access package assignment policy](accesspackageassignmentpolicy.md). 

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id | String | ID of the question. |
| isRequired | Boolean | Is the requestor required to supply an answer. |
| text | [entitlementManagementLocalizedContent](entitlementmanagementlocalizedcontent.md) | The text of the question to show to the requestor. |
| sequence | Int32 | Relative position of this question when displaying a list of questions to the requestor. |


## JSON representation

The following is a JSON representation of a question.  Note that a question is an abstract base class, and so would not be sent or received.  

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.question",
  "baseType": ""
}-->

```json
{
    "id": "f56d8bd7-0577-420c-81ee-df51c8be170a",
    "isRequired": true,
    "sequence": 0,
    "text": {
        "defaultText": "Have you completed the required training?",
        "localizedTexts": []
    }
}
```



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "question abstract type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
