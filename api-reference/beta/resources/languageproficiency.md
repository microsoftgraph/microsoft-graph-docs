---
title: "languageProficiency resource type"
description: "languageProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# languageProficiency resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about languages that a user has added to their [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

| Method                                                       | Return Type                                   | Description                                                      | 
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get languageProficiency](../api/languageproficiency-get.md) | [languageProficiency](languageproficiency.md) | Read the properties and relationships of a **languageProficiency** object. |
| [Update languageProficiency](../api/languageproficiency-update.md)               | [languageProficiency](languageproficiency.md) | Update a **languageProficiency** object.                               |
| [Delete languageProficiency](../api/languageproficiency-delete.md)               | None                                          | Delete a **languageProficiency** object.                               |

## Properties

| Property     | Type        | Description                                                                                                                                                 |
|:-------------|:------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|
|displayName   |String       | Contains the long-form name for the language.                                                                                                   |
|proficiency   |string       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.|
|tag           |String       | Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).                                                                                  |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource. 

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.languageProficiency",
  "baseType": ""
}-->

```json
{
  "displayName": "String",
  "proficiency": "string",
  "tag": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "languageProficiency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
