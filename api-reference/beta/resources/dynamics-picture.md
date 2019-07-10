---
title: "picture resource type"
description: "Represents an picture object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# picture resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an picture object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get picture](../api/dynamics-picture-get.md) | [picture](dynamics-picture.md) | Read properties and relationships of picture object. |
| [Update](../api/dynamics-picture-update.md) | [picture](dynamics-picture.md) | Update picture object. |
| [Delete](../api/dynamics-picture-delete.md) | None | Delete picture object. |

## Properties

| Property                    | Type    | Description                                             |
|:----------------------------|:--------|:--------------------------------------------------------|
| id                          | string    | ID of the entity that picture belongs to. Non-editable. |
| width                       | numeric | The picture width.                                      |
| height                      | numeric | The picture height.                                     |
| contentType                 | MIME    | Image type.                                             |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.picture",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "content": "Stream",
  "contentType": "String",
  "height": 1024,
  "id": "String (identifier)",
  "width": 1024,
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "picture resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->