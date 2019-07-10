---
title: "salesCreditMemo resource type"
description: "Represents an salesCreditMemo object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesCreditMemo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesCreditMemo object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesCreditMemo](../api/dynamics-salescreditmemo-get.md) | [salesCreditMemo](dynamics-salescreditmemo.md) | Read properties and relationships of salesCreditMemo object. |
| [Create salesCreditMemoLine](../api/dynamics-salescreditmemo-post-salescreditmemolines.md) | [salesCreditMemoLine](dynamics-salescreditmemoline.md) | Create a new salesCreditMemoLine by posting to the salesCreditMemoLines collection. |
| [List salesCreditMemoLines](../api/dynamics-salescreditmemo-list-salescreditmemolines.md) | [salesCreditMemoLine](dynamics-salescreditmemoline.md) collection | Get a salesCreditMemoLine object collection. |
| [Update](../api/dynamics-salescreditmemo-update.md) | [salesCreditMemo](dynamics-salescreditmemo.md) | Update salesCreditMemo object. |
| [Delete](../api/dynamics-salescreditmemo-delete.md) | None | Delete salesCreditMemo object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The credit memo ID. Non-editable.|
|number|string, maximum size 20|The credit memo number. Read-Only.|
|creditMemoDate|date|The credit memo date|
|dueDate|date|The date the credit memo is due.|
|customerId|GUID|The id of the credit memo customer.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerNumber|string, maximum size 20|The customer number for the credit memo.|
|customerName|string, maximum size 50|The full name of the customer. Read-Only.|
|currencyId|GUID|The id of the credit memo currency.|
|currencyCode|string, maximum size 10|The currency code for the credit memo.|
|paymentTermsId|GUID|The id of the credit memo payment term.|
|paymentTerms|string, maximum size 10|The payment terms of the credit memo.|
|salesperson|string, maximum size 20|The salesperson code for the credit memo.|
|pricesIncludeTax|boolean|Specifies whether the prices include Tax or not. Read-Only.|
|discountAmount|numeric|The credit memo discount amount|
|discountAppliedBeforeTax|boolean|Specifies whether the discount is applied before tax.|
|totalAmountExcludingTax|numeric|The total amount excluding tax. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the credit memo. Read-Only.|
|totalAmountIncludingTax|numeric|The total amount for the credit memo, including tax. Read-Only.|
|status|string, maximum size 20|The credit memo status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|invoiceId|GUID|The sales invoice ID that the credit memo is linked to.|
|invoiceNumber|GUID|The sales invoice number that the credit memo is linked to.|
|email           |string, maximum size 80|Email for the customer, cash sales|             |
|phone           |string, maximum size 30|Phone number for the customer, cash sales| 
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|sellingPostalAddress|microsoft.graph.postalAddressType| Selling postal address|
|billingPostalAddress|complex|The billing postal address for the credit memo.|
|lastModifiedDateTime|datetime|The last datetime the sales credit memo was modified. Read-Only.|




## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|customer|[customer](dynamics-customer.md)| Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Nullable.|
|salesCreditMemoLines|[salesCreditMemoLine](dynamics-salescreditmemoline.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.salesCreditMemo",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "billToCustomerId": "Guid",
  "billToCustomerNumber": "String",
  "billToName": "String",
  "billingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "creditMemoDate": "String (timestamp)",
  "currencyCode": "String",
  "currencyId": "Guid",
  "customerId": "Guid",
  "customerName": "String",
  "customerNumber": "String",
  "discountAmount": 1024,
  "discountAppliedBeforeTax": true,
  "dueDate": "String (timestamp)",
  "email": "String",
  "externalDocumentNumber": "String",
  "id": "String (identifier)",
  "invoiceId": "Guid",
  "invoiceNumber": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "paymentTermsId": "Guid",
  "phoneNumber": "String",
  "pricesIncludeTax": true,
  "salesperson": "String",
  "sellingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "status": "String",
  "totalAmountExcludingTax": 1024,
  "totalAmountIncludingTax": 1024,
  "totalTaxAmount": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "salesCreditMemo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->