---
title: "salesInvoice resource type"
description: "Represents an salesInvoice object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesInvoice resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesInvoice object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesInvoice](../api/dynamics-salesinvoice-get.md) | [salesInvoice](dynamics-salesinvoice.md) | Read properties and relationships of salesInvoice object. |
| [Create salesInvoiceLine](../api/dynamics-salesinvoice-post-salesinvoicelines.md) | [salesInvoiceLine](dynamics-salesinvoiceline.md) | Create a new salesInvoiceLine by posting to the salesInvoiceLines collection. |
| [List salesInvoiceLines](../api/dynamics-salesinvoice-list-salesinvoicelines.md) | [salesInvoiceLine](dynamics-salesinvoiceline.md) collection | Get a salesInvoiceLine object collection. |
| [Update](../api/dynamics-salesinvoice-update.md) | [salesInvoice](dynamics-salesinvoice.md) | Update salesInvoice object. |
| [Delete](../api/dynamics-salesinvoice-delete.md) | None | Delete salesInvoice object. |
|[Cancel](../api/dynamics-salesinvoice-cancel.md)|None|Cancels the sales invoice.|
|[Cancelandsend](../api/dynamics-salesinvoice-cancelandsend.md)|None|Cancels and sends the cancelled sales invoice.|
|[Post](../api/dynamics-salesinvoice-post.md)|None|Posts the sales invoice. |
|[Postandsend](../api/dynamics-salesinvoice-postandsend.md)|None|Post and sends the sales invoice.|
|[Send](../api/dynamics-salesinvoice-send.md)|None|Send the already posted or cancelled sales invoice.|

## Properties
| Property                | Type    | Description                                               |
|:------------------------|:------|:----------------------------------------------------------|
|id                     |string       |The sales invoice ID. Non-editable.                              |
|number                 |string, maximum size 20|The invoice number. Read-Only.                 |
|externalDocumentNumber|string |The external document number |
|invoiceDate            |date       |The invoice date.                                           |
|customerPurchaseOrderReference|string, maximum size 35|The customer purchase order reference for the invoice|
|dueDate                |date       |The date the invoice is due.                               |
|customerNumber         |string, maximum size 20|The customer number for the invoice.           |
|contactId              |string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerId             |GUID       |The id of the invoice customer.                            |
|customerName           |string, maximum size 50|The full name of the customer. Read-Only.      |
|currencyId             |GUID       |The id of the invoice currency.                            |
|currencyCode           |string, maximum size 10|The currency code for the invoice.             |
|email           |string, maximum size 80|Email for the customer, cash sales|             |
|phone           |string, maximum size 30|Phone number for the customer, cash sales| 
|orderId                |GUID       |The unique id of the order to which the invoice is associated to. Read-Only.|
|orderNumber            |string, maximum size 20|The number of the order to which the invoice is associated to. Read-Only.|
|status                 |string, maximum size 20|The invoice status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|discountAmount         |numeric    |The invoice discount amount.                                |
|discountAppliedBeforeTax|boolean   |Specifies whether the discount is applied before tax.      |
|totalAmountExcludingTax|numeric    |The total amount excluding tax. Read-Only.                 |
|totalTaxAmount         |numeric    |The total tax amount for the invoice. Read-Only.           |
|totalAmountIncludingTax|numeric    |The total amount for the invoice, including tax. Read-Only.|
|pricesIncludeTax       |boolean    |Specifies whether the prices include Tax or not. Read-Only.|
|billingPostalAddress   |complex    |The billing postal address for the invoice.                |  
|paymentTermsId         |GUID       |The id of the invoice payment term.                        |
|paymentTerms           |string, maximum size 10|The payment terms of the invoice.              |
|shipmentMethodId       |GUID       |The id of the invoice shipment method.                     |
|shipmentMethod         |string, maximum size 10|The shipment method of the invoice.            |
|salesperson            |string, maximum size 20|The salesperson code for the invoice.          |
|lastModifiedDateTime   |datetime   |The last datetime the sales invoice was modified. Read-Only.|
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|shipToName   |string, maximum size 100   |Name of the customer in ship to address.|
|shipToContact   |string, maximum size 100   |Ship to contact|
|sellingPostalAddress|microsoft.graph.postalAddressType| Selling postal address|
|billingPostalAddress|microsoft.graph.postalAddressType| Billing postal address|
|shippingPostalAddress|microsoft.graph.postalAddressType| Shipping postal adress|



## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|customer|[customer](dynamics-customer.md)| Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Nullable.|
|salesInvoiceLines|[salesInvoiceLine](dynamics-salesinvoiceline.md) collection| Nullable.|
|shipmentMethod|[shipmentMethod](dynamics-shipmentmethod.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.salesInvoice",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "billToCustomerId": "Guid",
  "billToCustomerNumber": "String",
  "billToName": "String",
  "billingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "currencyCode": "String",
  "currencyId": "Guid",
  "customerId": "Guid",
  "customerName": "String",
  "customerNumber": "String",
  "customerPurchaseOrderReference": "String",
  "discountAmount": 1024,
  "discountAppliedBeforeTax": true,
  "dueDate": "String (timestamp)",
  "email": "String",
  "externalDocumentNumber": "String",
  "id": "String (identifier)",
  "invoiceDate": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "orderId": "Guid",
  "orderNumber": "String",
  "paymentTermsId": "Guid",
  "phoneNumber": "String",
  "pricesIncludeTax": true,
  "salesperson": "String",
  "sellingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "shipToContact": "String",
  "shipToName": "String",
  "shipmentMethodId": "Guid",
  "shippingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
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
  "description": "salesInvoice resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->