---
title: "personInterest resource type"
description: "personInterest resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personInterest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [personInterest](personinterest.md) resource type provides detailed information about interests the user has associated with themselves in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method       | Return Type | Description |
|:---------------------------------------------------|:------------------------------------|:------------------------------------------------------------|
| [Get personInterest](../api/personinterest-get.md) | [personInterest](personinterest.md) | Read properties and relationships of personInterest object. |
| [Update](../api/personinterest-update.md)          | [personInterest](personinterest.md) | Update personInterest object.                               |
| [Delete](../api/personinterest-delete.md)          | None                                | Delete personInterest object.                               |

## Properties

| Property     | Type             | Description                                                                          |
|:-------------|:-----------------|:-------------------------------------------------------------------------------------|
|categories    |String collection | Contains categories a user has associated with the interest (eg: personal, recipies) |
|description   |String            | Contains a description of the interest.                                              |
|displayName   |String            | Contains a friendly name for the interest.                                           |
|webUrl        |String            | Contains a link to a webpage or resource about the interest.                         |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource. 

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personInterest",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "description": "String",
  "displayName": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personInterest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->