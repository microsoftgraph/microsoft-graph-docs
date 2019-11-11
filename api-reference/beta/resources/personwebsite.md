---
title: "personWebsite resource type"
description: "personWebsite resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personWebsite resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about websites associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                           | Return Type                       | Description                                                |
|:-------------------------------------------------|:----------------------------------|:-----------------------------------------------------------|
| [Get personWebsite](../api/personwebsite-get.md) | [personWebsite](personwebsite.md) | Read the properties and relationships of a **personWebsite** object. |
| [Update personWebsite](../api/personwebsite-update.md)         | [personWebsite](personwebsite.md) | Update a **personWebsite** object.                               |
| [Delete personWebsite](../api/personwebsite-delete.md)         | None                              | Delete a **personWebsite** object.                               |

## Properties

| Property     | Type              | Description                                                                         |
|:-------------|:------------------|:------------------------------------------------------------------------------------|
|categories    |String collection  | Contains categories a user has associated with the website (for example, personal, recipes).  |
|description   |String             | Contains a description of the website.                                              |
|displayName   |String             | Contains a friendly name for the website.                                           |
|webUrl        |String             | Contains a link to the website itself.                                              |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource. 

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personWebsite",
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
  "description": "personWebsite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
