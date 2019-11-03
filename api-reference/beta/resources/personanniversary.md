---
title: "personAnniversary resource type"
description: "personAnniversary resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personAnniversary resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detail of meaningful dates associated with a person in a user's [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

| Method                                                   | Return Type                               | Description                                                    |
|:---------------------------------------------------------|:------------------------------------------|:---------------------------------------------------------------|
| [Get personAnniversary](../api/personanniversary-get.md) | [personAnniversary](personanniversary.md) | Read properties and relationships of personAnniversary object. |
| [Update](../api/personanniversary-update.md)             | [personAnniversary](personanniversary.md) | Update personAnniversary object.                               |
| [Delete](../api/personanniversary-delete.md)             | None                                      | Delete personAnniversary object.                               |

## Properties

| Property     | Type        | Description                                                      |
|:-------------|:------------|:-----------------------------------------------------------------|
|date          |Date         | Containes the date associated with the anniversary type.         |
|type          |string       | Possible values are: `birthday`, `wedding`, `unknownFutureValue`.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource. 

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personAnniversary",
  "baseType": ""
}-->

```json
{
  "date": "String (timestamp)",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "personAnniversary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->