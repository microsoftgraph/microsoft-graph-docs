---
title: "skillProficiency resource type"
description: "skillProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# skillProficiency resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about skills the user has associated with themselves in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods
 
| Method                                                 | Return Type                             | Description                                                   |
|:-------------------------------------------------------|:----------------------------------------|:--------------------------------------------------------------|
| [Get skillProficiency](../api/skillproficiency-get.md) | [skillProficiency](skillproficiency.md) | Read properties and relationships of skillProficiency object. |
| [Update](../api/skillproficiency-update.md)            | [skillProficiency](skillproficiency.md) | Update skillProficiency object.                               |
| [Delete](../api/skillproficiency-delete.md)            | None                                    | Delete skillProficiency object.                               |

## Properties

| Property     | Type             | Description                                                                                                                        |
|:-------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------|
|categories    |String collection | Contains categories a user has associated with the skill (eg: personal, professional, hobby)                                       |
|displayName   |String            | Contains a friendly name for the skill.                                                                                            |      
|proficiency   |string            | Possible values are: `elementary`, `limitedWorking`, `generalProfessional`, `advancedProfessional`, `expert`, `unknownFutureValue`.|
|webUrl        |String            | Contains a link to an information source about the skill.                                                                          |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.skillProficiency",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "displayName": "String",
  "proficiency": "string",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "skillProficiency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->