---
title: "displayNameLocalization resource type"
description: "Provides the ability for an administrator to customize the string used in a shared Microsoft 365 experience."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# displayNameLocalization resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the ability for an administrator to customize the string used in a shared Microsoft 365 experience.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName   |String       | If present, the value of this field contains the **displayName** string that has been set for the language present in the **languageTag** field.|
|languageTag   |String       | Provides the language culture-code and friendly name of the language that the **displayName** field has been provided in.                  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.displayNameLocalization",
  "baseType": null
}-->

```json
{
  "displayName": "string",
  "languageTag": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "displayNameLocalization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


