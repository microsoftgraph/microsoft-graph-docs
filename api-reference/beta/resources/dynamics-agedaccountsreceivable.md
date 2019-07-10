---
title: "agedAccountsReceivable resource type"
description: "Represents an agedAccountsReceivable object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# agedAccountsReceivable resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agedAccountsReceivable object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agedAccountsReceivable](../api/dynamics-agedaccountsreceivable-get.md) | [agedAccountsReceivable](dynamics-agedaccountsreceivable.md) | Read properties and relationships of agedAccountsReceivable object. |
| [Update](../api/dynamics-agedaccountsreceivable-update.md) | [agedAccountsReceivable](dynamics-agedaccountsreceivable.md) | Update agedAccountsReceivable object. |
| [Delete](../api/dynamics-agedaccountsreceivable-delete.md) | None | Delete agedAccountsReceivable object. |

## Properties
| Property	     | Type    |Description                                  |
|:---------------|:--------|:--------------------------------------------|
|customerId      |GUID     |The unique ID of customer.                   |
|customerNumber  |string   |Specifies customer's number.                 |
|name            |string   |Specifies customer's name.                   |
|currencyCode    |string   |Specifies the currency.                      |
|balanceDue      |numeric  |Specifies the customer's total balance.      |
|currentAmount   |numeric  |Specifies balance for the current aging period.|
|period1Amount   |numeric  |Specifies balance in the first aging period. |
|period2Amount   |numeric  |Specifies balance in the second aging period.|
|period3Amount   |numeric  |Specifies balance in the third aging period. |
|agedAsOfDate    |date     |Specifies period start date used to calculate aging periods.|
|periodLengthFilter|string |Specifies the length of the periods. Acceptable time units include: D, WD, W, M, Q, and Y. C, meaning current time unit based on date, can be specified as a prefix to the time unit.|



## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agedAccountsReceivable",
  "baseType": "",
  "keyProperty": "customerId"
}-->

```json
{
  "agedAsOfDate": "String (timestamp)",
  "balanceDue": 1024,
  "currencyCode": "String",
  "currentAmount": 1024,
  "customerId": "String (identifier)",
  "customerNumber": "String",
  "name": "String",
  "period1Amount": 1024,
  "period2Amount": 1024,
  "period3Amount": 1024,
  "periodLengthFilter": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "agedAccountsReceivable resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->