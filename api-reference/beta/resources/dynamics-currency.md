---
title: "currency resource type"
description: "Represents an currency object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# currency resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an currency object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get currency](../api/dynamics-currency-get.md) | [currency](dynamics-currency.md) | Read properties and relationships of currency object. |
| [Update](../api/dynamics-currency-update.md) | [currency](dynamics-currency.md) | Update currency object. |
| [Delete](../api/dynamics-currency-delete.md) | None | Delete currency object. |

## Properties

| Property	            | Type	 |Description                                                   |
|:----------------------|:-------|:-------------------------------------------------------------|
|id                     |string    |The unique ID of the currency. Non-editable.                  |
|code                   |string  |Specifies the currency code.                                  |
|displayName            |string  |Specifies the currency display name.                          |
|symbol                 |string  |Specifies the symbol for this currency that appears on checks.|
|amountDecimalPlaces    |string  |Specifies the number of decimal places the system will display on amounts for this currency.|
|amountRoundingPrecision|decimal |Specifies the size of the interval to be used when rounding amounts for this currency.|
|lastModifiedDateTime   |datetime|The last datetime the currency was modified. Read-Only.       |  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.currency",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "amountDecimalPlaces": "String",
  "amountRoundingPrecision": 1024,
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "symbol": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "currency resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->