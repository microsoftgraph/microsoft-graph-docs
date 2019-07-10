---
title: "dimension resource type"
description: "Represents an dimension object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# dimension resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an dimension object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get dimension](../api/dynamics-dimension-get.md) | [dimension](dynamics-dimension.md) | Read properties and relationships of dimension object. |
| [Create dimensionValue](../api/dynamics-dimension-post-dimensionvalues.md) | [dimensionValue](dynamics-dimensionvalue.md) | Create a new dimensionValue by posting to the dimensionValues collection. |
| [List dimensionValues](../api/dynamics-dimension-list-dimensionvalues.md) | [dimensionValue](dynamics-dimensionvalue.md) collection | Get a dimensionValue object collection. |
| [Update](../api/dynamics-dimension-update.md) | [dimension](dynamics-dimension.md) | Update dimension object. |
| [Delete](../api/dynamics-dimension-delete.md) | None | Delete dimension object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string                   |The unique ID of the item.|
|code                |string, maximum size 20|The dimension code.       |
|displayName         |string                 |Specifies the dimension's name. This name will appear where the dimension is used.|
|lastModifiedDateTime|datetime               |The last datetime the dimension was modified.|  

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|dimensionValues|[dimensionValue](dynamics-dimensionvalue.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.dimension",
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
  "description": "dimension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->