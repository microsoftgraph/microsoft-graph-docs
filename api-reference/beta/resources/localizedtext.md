---
title: "localizedText resource type"
description: "A localized string variant for a question in an access package assignment policy."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# localizedText resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type holds a localized variant of a question string that is used in the questions property of an [access package assignment policy](accesspackageassignmentpolicy.md).

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| languageCode | String | The language code for the locale. |
| text | String | The text to display for a requestor in a specific locale. |

## JSON representation

The following is a JSON representation of a localizedText.  

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.localizedText",
  "baseType": ""
}-->

```json
{

    "text": "Have you completed the required training?",
    "languageCode": "en"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "localizedText resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
