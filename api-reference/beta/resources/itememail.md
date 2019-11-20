---
title: "itemEmail resource type"
description: "itemEmail resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemEmail resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about email addresses associated with the user.

## Methods

| Method                                   | Return Type               | Description                                            |
|:-----------------------------------------|:--------------------------|:-------------------------------------------------------|
| [Get](../api/itememail-get.md) | [itemEmail](itememail.md) | Read properties and relationships of an **itemEmail** object. |
| [Update](../api/itememail-update.md)     | [itemEmail](itememail.md) | Update an **itemEmail** object.                               |
| [Delete](../api/itememail-delete.md)     | None                      | Delete an **itemEmail** object.                               |

## Properties

| Property     | Type        | Description                                                               |
|:-------------|:------------|:--------------------------------------------------------------------------|
|address       |String       | The email address itself.                                                 |
|displayName   |String       | The name or label a user has associated with a particular email address.  |
|type          |string       | Possible values are: `unknown`, `work`, `personal`, `main`, `other`.      |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemEmail",
  "baseType": ""
}-->

```json
{
  "address": "String",
  "displayName": "String",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemEmail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
