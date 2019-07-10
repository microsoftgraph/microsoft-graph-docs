---
title: "paymentTerm resource type"
description: "Represents an paymentTerm object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# paymentTerm resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an paymentTerm object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get paymentTerm](../api/dynamics-paymentterm-get.md) | [paymentTerm](dynamics-paymentterm.md) | Read properties and relationships of paymentTerm object. |
| [Update](../api/dynamics-paymentterm-update.md) | [paymentTerm](dynamics-paymentterm.md) | Update paymentTerm object. |
| [Delete](../api/dynamics-paymentterm-delete.md) | None | Delete paymentTerm object. |

## Properties

| Property     | Type        | Description |
|:-----------------------------|:-------|:----------------------------------------------------------|
|id                            |string    |The unique ID of the paymentTerms. Non-editable.           |
|code                          |string  |Specifies the payment term code.                           |
|displayName                   |string  |Specifies the payment term display name.                   |
|dueDateCalculation            |string  |Specifies the formula that is used to calculate the date that a payment must be made.|
|discountDateCalculation       |string  |Specifies the formula that is used to calculate the date that a payment must be made in order to obtain a discount.|
|discountPercent               |decimal |Specifies the discount percentage that is applied for early payment of an invoice amount.|
|calculateDiscountOnCreditMemos|boolean |Specifies if the discount should be applied to credit memos. **True** indicates a discount will be given, **false** indicates a discount will not be given.|
|lastModifiedDateTime          |datetime|The last datetime the paymentTerms was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.paymentTerm",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "calculateDiscountOnCreditMemos": true,
  "code": "String",
  "discountDateCalculation": "String",
  "discountPercent": 1024,
  "displayName": "String",
  "dueDateCalculation": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "paymentTerm resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->