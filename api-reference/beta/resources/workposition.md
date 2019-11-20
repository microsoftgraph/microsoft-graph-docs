---
title: "workPosition resource type"
description: "workPosition resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# workPosition resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about work positions associated with a user's [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                         | Return Type                     | Description                                               |
|:-----------------------------------------------|:--------------------------------|:----------------------------------------------------------|
| [Get workPosition](../api/workposition-get.md) | [workPosition](workposition.md) | Read the properties and relationships of a **workPosition** object. |
| [Update workPosition](../api/workposition-update.md)        | [workPosition](workposition.md) | Update a **workPosition** object.                               |
| [Delete workPosition](../api/workposition-delete.md)        | None                            | Delete a **workPosition** object.                               |

## Properties

| Property             | Type                               | Description                                                                                                |
|:---------------------|:-----------------------------------|:-----------------------------------------------------------------------------------------------------------|
|categories            |String collection                   | Contains categories a user has associated with the position (for example, digital transformation, people). |
|detail                |[positionDetail](positiondetail.md) | Contains detail about the user's current and previous employment positions.                                 |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workPosition",
  "baseType": ""
}-->

```json
{
  "categories": ["String"],
  "detail": {"@odata.type": "microsoft.graph.positionDetail"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workPosition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
