---
title: "dimensionValue resource type"
description: "Represents an dimensionValue object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# dimensionValue resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an dimensionValue object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get dimensionValue](../api/dynamics-dimensionvalue-get.md) | [dimensionValue](dynamics-dimensionvalue.md) | Read properties and relationships of dimensionValue object. |
| [Update](../api/dynamics-dimensionvalue-update.md) | [dimensionValue](dynamics-dimensionvalue.md) | Update dimensionValue object. |
| [Delete](../api/dynamics-dimensionvalue-delete.md) | None | Delete dimensionValue object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string                   |The unique ID of the item.                         |
|code                |string, maximum size 20|The dimension value code.                          |
|displayName         |string                 |Specifies the dimension value's name. This name will appear where the dimension value is used.|
|lastModifiedDateTime|datetime               |The last datetime the dimension value was modified.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.dimensionValue",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "dimensionValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->