---
title: "customerPaymentJournal resource type"
description: "Represents an customerPaymentJournal object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# customerPaymentJournal resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an customerPaymentJournal object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get customerPaymentJournal](../api/dynamics-customerpaymentjournal-get.md) | [customerPaymentJournal](dynamics-customerpaymentjournal.md) | Read properties and relationships of customerPaymentJournal object. |
| [Create customerPayment](../api/dynamics-customerpaymentjournal-post-customerpayments.md) | [customerPayment](dynamics-customerpayment.md) | Create a new customerPayment by posting to the customerPayments collection. |
| [List customerPayments](../api/dynamics-customerpaymentjournal-list-customerpayments.md) | [customerPayment](dynamics-customerpayment.md) collection | Get a customerPayment object collection. |
| [Update](../api/dynamics-customerpaymentjournal-update.md) | [customerPaymentJournal](dynamics-customerpaymentjournal.md) | Update customerPaymentJournal object. |
| [Delete](../api/dynamics-customerpaymentjournal-delete.md) | None | Delete customerPaymentJournal object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string                   |The unique ID of the customer payment journal. Non-editable.           |
|code                |string, maximum size 10| The code of the customer payment journal.                             |
|displayName         |string, maximum size 50| The display name of the customer payment journal.                     |
|balancingAccountId|Guid|The account id of the balancing account.|
|balancingAccountNumber|String|Account number of the balancing account.|
|lastModifiedDateTime|datetime               |The last datetime the customer payment journal was modified. Read-Only.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Read-only. Nullable.|
|customerPayments|[customerPayment](dynamics-customerpayment.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.customerPaymentJournal",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "balancingAccountId": "Guid",
  "balancingAccountNumber": "String",
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
  "description": "customerPaymentJournal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->