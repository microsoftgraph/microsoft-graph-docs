---
title: "shipmentMethod resource type"
description: "Represents an shipmentMethod object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# shipmentMethod resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an shipmentMethod object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get shipmentMethod](../api/dynamics-shipmentmethod-get.md) | [shipmentMethod](dynamics-shipmentmethod.md) | Read properties and relationships of shipmentMethod object. |
| [Update](../api/dynamics-shipmentmethod-update.md) | [shipmentMethod](dynamics-shipmentmethod.md) | Update shipmentMethod object. |
| [Delete](../api/dynamics-shipmentmethod-delete.md) | None | Delete shipmentMethod object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the shipmentMethod. Non-editable.|
|code|string|Specifies the shipment method code.|
|displayName|string|Specifies the shipment method display name.|
|lastModifiedDateTime|datetime|The last datetime the shipment method was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.shipmentMethod",
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
  "description": "shipmentMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->