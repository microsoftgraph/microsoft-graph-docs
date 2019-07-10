---
title: "paymentMethod resource type"
description: "Represents an paymentMethod object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# paymentMethod resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an paymentMethod object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get paymentMethod](../api/dynamics-paymentmethod-get.md) | [paymentMethod](dynamics-paymentmethod.md) | Read properties and relationships of paymentMethod object. |
| [Update](../api/dynamics-paymentmethod-update.md) | [paymentMethod](dynamics-paymentmethod.md) | Update paymentMethod object. |
| [Delete](../api/dynamics-paymentmethod-delete.md) | None | Delete paymentMethod object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|:-------------------|:-------|:------------------------------------------------------------|
|id                  |string    |The unique ID of the paymentMethods. Non-editable.           |
|code                |string  |Specifies the payment method code.                           |
|displayName         |string  |Specifies the payment method display name.                   |
|lastModifiedDateTime|datetime|The last datetime the payment method was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.paymentMethod",
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
  "description": "paymentMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->