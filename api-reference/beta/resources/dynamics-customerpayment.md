---
title: "customerPayment resource type"
description: "Represents an customerPayment object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# customerPayment resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an customerPayment object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get customerPayment](../api/dynamics-customerpayment-get.md) | [customerPayment](dynamics-customerpayment.md) | Read properties and relationships of customerPayment object. |
| [Update](../api/dynamics-customerpayment-update.md) | [customerPayment](dynamics-customerpayment.md) | Update customerPayment object. |
| [Delete](../api/dynamics-customerpayment-delete.md) | None | Delete customerPayment object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The unique ID of the customer payment. Non-editable.|
|journalDisplayName|string|The customer payment journal in which the payment record is a line.|
|lineNumber|integer|The number of the customer payment.|
|customerId|GUID|The unique ID of the customer that the payment is related to.|
|customerNumber|string, maximum size 20|The number of the customer that the payment is related to.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|postingDate|date|The date that the customer payment is posted.|
|documentNumber|string, maximum size 20|Specifies a document number for the customer payment.|
|externalDocumentNumber|string, maximum size 20|Specifies an external document number for the customer payment.|
|amount|decimal|Specifies the total amount (including VAT) that the customer payment consists of.|
|appliesToInvoiceId|GUID|The unique ID of the invoice that the payment is related to.|
|appliesToInvoiceNumber|string, maximum size 20|The number of the invoice that the payment is related to.|
|description|string, maximum size 50|The description of the customer payment, provided by the user or autocreated.|
|comment|string, maximum size 250|A user specified comment on the customer payment.|
|lastModifiedDateTime|datetime|The last datetime the customer payment was modified. Read-Only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|customer|[customer](dynamics-customer.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.customerPayment",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "amount": 1024,
  "appliesToInvoiceId": "Guid",
  "appliesToInvoiceNumber": "String",
  "comment": "String",
  "contactId": "String",
  "customerId": "Guid",
  "customerNumber": "String",
  "description": "String",
  "documentNumber": "String",
  "externalDocumentNumber": "String",
  "id": "String (identifier)",
  "journalDisplayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lineNumber": 1024,
  "postingDate": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "customerPayment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->