---
title: "purchaseInvoice resource type"
description: "Represents an purchaseInvoice object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# purchaseInvoice resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an purchaseInvoice object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get purchaseInvoice](../api/dynamics-purchaseinvoice-get.md) | [purchaseInvoice](dynamics-purchaseinvoice.md) | Read properties and relationships of purchaseInvoice object. |
| [Create purchaseInvoiceLine](../api/dynamics-purchaseinvoice-post-purchaseinvoicelines.md) | [purchaseInvoiceLine](dynamics-purchaseinvoiceline.md) | Create a new purchaseInvoiceLine by posting to the purchaseInvoiceLines collection. |
| [List purchaseInvoiceLines](../api/dynamics-purchaseinvoice-list-purchaseinvoicelines.md) | [purchaseInvoiceLine](dynamics-purchaseinvoiceline.md) collection | Get a purchaseInvoiceLine object collection. |
| [Update](../api/dynamics-purchaseinvoice-update.md) | [purchaseInvoice](dynamics-purchaseinvoice.md) | Update purchaseInvoice object. |
| [Delete](../api/dynamics-purchaseinvoice-delete.md) | None | Delete purchaseInvoice object. |
|[Post](../api/dynamics-purchaseinvoice-post.md)|None||

## Properties
| Property              | Type              |Description                                                |
|:----------------------|:----------------------|:----------------------------------------------------------|
|id                     |string                   |The invoice ID. Read-Only.                                 |
|number                 |string, maximum size 20|The invoice number. Read-Only.                             |
|invoiceDate            |date                   |The invoice date                                           |
|dueDate                |date                   |The date the invoice is due.                               |
|vendorInvoiceNumber    |string, maximum size 35|The vendor sales order reference for the invoice           |
|vendorId               |GUID                   |The id of the invoice vendor.                              |
|vendorNumber           |string, maximum size 20|The vendor number for the invoice.                         |
|vendorName             |string, maximum size 50|The full name of the vendor. Read-Only.                    |
|buyFromAddress         |[microsoft.graph.postalAddress](../resources/dynamics_complextypes.md)|The vendor's address.  |
|currencyId           |GUID|The currency Id for the invoice.                         |
|currencyCode           |string, maximum size 10|The currency code for the invoice.                         |
|status                 |string, maximum size 20|The invoice status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|discountAmount         |numeric                |The invoice discount amount                                |
|discountAppliedBeforeTax|boolean               |Specifies whether the discount is applied before tax.      |
|totalAmountExcludingTax|numeric                |The total amount excluding tax. Read-Only.                 |
|totalTaxAmount         |numeric                |The total tax amount for the invoice. Read-Only.           |
|totalAmountIncludingTax|numeric                |The total amount for the invoice, including tax. Read-Only.|
|pricesIncludeTax       |boolean                |Specifies whether the prices include Tax or not. Read-Only.|
|paymentTerms           |string, maximum size 10|The payment terms of the invoice.                          |
|shipmentMethod         |string, maximum size 10|The shipment method of the invoice.                        |
|payToName|string, maximum size 100 |Pay to name of the invoice. |
|payToContact|string, maximum size 100 |Pay to contact|
|payToVendorId|GUID |Pay to vendor id. |
|payToVendorNumber|string, maximum size 20 |Pay to vendor number |
|shipToName|string, maximum size 100|Ship to name. |
|shipToContact|string, maximum size 100|Ship to contact. |
|buyFromAddress|microsoft.graph.postalAddressType |Buy from address. |
|payToAddress| |microsoft.graph.postalAddressType |Pay to address. |
|shipToAddress| |microsoft.graph.postalAddressType |Ship to address. |
|lastModifiedDateTime   |datetime               |The last datetime the purchase invoice was modified. Read-Only.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|purchaseInvoiceLines|[purchaseInvoiceLine](dynamics-purchaseinvoiceline.md) collection| Nullable.|
|vendor|[vendor](dynamics-vendor.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.purchaseInvoice",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "buyFromAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "currencyCode": "String",
  "currencyId": "Guid",
  "discountAmount": 1024,
  "discountAppliedBeforeTax": true,
  "dueDate": "String (timestamp)",
  "id": "String (identifier)",
  "invoiceDate": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "payToAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "payToContact": "String",
  "payToName": "String",
  "payToVendorId": "Guid",
  "payToVendorNumber": "String",
  "pricesIncludeTax": true,
  "shipToAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "shipToContact": "String",
  "shipToName": "String",
  "status": "String",
  "totalAmountExcludingTax": 1024,
  "totalAmountIncludingTax": 1024,
  "totalTaxAmount": 1024,
  "vendorId": "Guid",
  "vendorInvoiceNumber": "String",
  "vendorName": "String",
  "vendorNumber": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "purchaseInvoice resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->