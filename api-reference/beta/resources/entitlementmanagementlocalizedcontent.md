---
title: "entitlementManagementLocalizedContent resource type"
description: "The string variants for questions in an access package assignment policy."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# entitlementManagementLocalizedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This type holds the localized variants of question strings that are used in the questions property of an [access package assignment policy](accesspackageassignmentpolicy.md).

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| defaultText | String | The text to display if no appropriate locale-specific text is available. |
| localizedTexts | [localizedText](localizedtext.md) collection | The text to display for a requestor in a specific locale. |

## JSON representation

The following is a JSON representation of a entitlementManagementLocalizedContent.  

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.entitlementManagementLocalizedContent",
  "baseType": ""
}-->

```json
{

    "defaultText": "Have you completed the required training?",
    "localizedTexts": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "entitlementManagementLocalizedContent resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
