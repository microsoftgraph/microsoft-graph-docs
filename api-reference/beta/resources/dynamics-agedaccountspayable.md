---
title: "agedAccountsPayable resource type"
description: "Represents an agedAccountsPayable object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# agedAccountsPayable resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agedAccountsPayable object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agedAccountsPayable](../api/dynamics-agedaccountspayable-get.md) | [agedAccountsPayable](dynamics-agedaccountspayable.md) | Read properties and relationships of agedAccountsPayable object. |
| [Update](../api/dynamics-agedaccountspayable-update.md) | [agedAccountsPayable](dynamics-agedaccountspayable.md) | Update agedAccountsPayable object. |
| [Delete](../api/dynamics-agedaccountspayable-delete.md) | None | Delete agedAccountsPayable object. |

## Properties

## Properties
| Property	    | Type	   |Description                                 |
|:--------------|:---------|:-------------------------------------------|
|vendorId       |GUID      |The unique ID of vendor.                    |
|vendorNumber   |string    |Specifies vendor's number.                  |
|name           |string    |Specifies vendor's name.                    |
|currencyCode   |string    |Specifies the currency.                     |
|balanceDue     |numeric   |Specifies the total balance due to the vendor.|
|currentAmount  |numeric   |Specifies balance before first aging period.|
|period1Amount  |numeric   |Specifies balance in the first aging period.|
|period2Amount  |numeric   |Specifies balance in the second aging period.|
|period3Amount  |numeric   |Specifies balance in the third aging period.|
|agedAsOfDate   |date|Specifies period start date used to calculate aging periods.|
|periodLengthFilter|string |Specifies the length of the periods. Acceptable values for the time units are: D, WD, W, M, Q, or Y. C, meaning current time unit based on date, can be specified as a prefix to the time unit.|


## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agedAccountsPayable",
  "baseType": "",
  "keyProperty": "vendorId"
}-->

```json
{
  "agedAsOfDate": "String (timestamp)",
  "balanceDue": 1024,
  "currencyCode": "String",
  "currentAmount": 1024,
  "name": "String",
  "period1Amount": 1024,
  "period2Amount": 1024,
  "period3Amount": 1024,
  "periodLengthFilter": "String",
  "vendorId": "String (identifier)",
  "vendorNumber": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "agedAccountsPayable resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->