---
title: "personAnniversary resource type"
description: "personAnniversary resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personAnniversary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of meaningful dates associated with a person in a user's [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

| Method                                                   | Return Type                               | Description                                                              |
|:---------------------------------------------------------|:------------------------------------------|:-------------------------------------------------------------------------|
| [Get personAnniversary](../api/personanniversary-get.md) | [personAnniversary](personanniversary.md) | Read the properties and relationships of a **personAnniversary** object. |
| [Update](../api/personanniversary-update.md)             | [personAnniversary](personanniversary.md) | Update a **personAnniversary** object.                                   |
| [Delete](../api/personanniversary-delete.md)             | None                                      | Delete a **personAnniversary** object.                                   |

## Properties

| Property     | Type        | Description                                                      |
|:-------------|:------------|:-----------------------------------------------------------------|
|date          |Date         | Contains the date associated with the anniversary type.          |
|type          |string       | Possible values are: `birthday`, `wedding`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personAnniversary",
  "baseType": "microsoft.graph.itemfacet",
  "keyProperty": "id"
}-->

```json
{
  "allowedAudiences": "organization",
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "date": "1980-01-08",
  "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
  "inference": null,
  "lastModifiedDateTime": "2020-02-18T16:07:14Z",
  "lastModifiedBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
  "source": "SharePoint UPA",
  "type": "birthday"
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
