---
title: purchaseInvoices resource type | Microsoft Docs
description: A purchase invoice object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# purchaseInvoices resource type
Represents a purchase invoice in Dynamics 365 Business Central. 


## Methods

| Method                                                             | Return Type    |Description                     |
|:-------------------------------------------------------------------|:---------------|:-------------------------------|
|[GET purchaseInvoices](../api/dynamics-purchaseinvoice-get.md)      |purchaseInvoices|Gets a purchase invoice object.|
|[POST purchaseInvoices](../api/dynamics-create-purchaseinvoice.md)  |purchaseInvoices|Creates a purchase invoice object.|
|[PATCH purchaseInvoices](../api/dynamics-purchaseinvoice-update.md) |purchaseInvoices|Updates a purchase invoice object.|
|[DELETE purchaseInvoices](../api/dynamics-purchaseinvoice-delete.md)|none            |Deletes a purchase invoice object.|

## Bound actions

|Action          |Return type   |Description         |
|----------------|--------------|--------------------|
|[GET pdfDocument](../api/dynamics-salesquote-pdfdocument.md)|pdfDocument|Gets a PDF document.|


## Properties

| Property              | Type              |Description                                                |
|:----------------------|:----------------------|:----------------------------------------------------------|
|id                     |GUID                   |The invoice ID. Read-Only.                                 |
|number                 |string, maximum size 20|The invoice number. Read-Only.                             |
|invoiceDate            |date                   |The invoice date                                           |
|dueDate                |date                   |The date the invoice is due.                               |
|vendorInvoiceNumber    |string, maximum size 35|The vendor sales order reference for the invoice           |
|vendorId               |GUID                   |The id of the invoice vendor.                              |
|vendorNumber           |string, maximum size 20|The vendor number for the invoice.                         |
|vendorName             |string, maximum size 50|The full name of the vendor. Read-Only.                    |
|buyFromAddress         |[NAV.PostalAddress](../resources/dynamics_complextypes.md)|The vendor's address.  |
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
|buyFromAddress|NAV.postalAddressType |Buy from address. |
|payToAddress| |NAV.postalAddressType |Pay to address. |
|shipToAddress| |NAV.postalAddressType |Ship to address. |
|lastModifiedDateTime   |datetime               |The last datetime the purchase invoice was modified. Read-Only.|


## Relationships
A Currency (currencyCode) must exist in the Currencies table.

A Payment Term (paymentTerms) must exist in the Payment Terms table.

A Shipment Method (shipmentMethod) must exist in the Shipment Method table.

A Vendor (vendorId) must exist in the Vendor table.

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "invoiceDate": "Date",
      "dueDate": "Date",
      "vendorInvoiceNumber": "string",
      "vendorId": "GUID",
      "vendorNumber": "string",
      "vendorName": "string",
      "currencyCode": "string",
      "status": "string",
      "discountAmount": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "totalAmountExcludingTax": "decimal",
      "pricesIncludeTax": "boolean",
      "totalTaxAmount": "decimal",
      "totalAmountIncludingTax": "decimal",
      "buyFromAddress": {NAV.PostalAddress},
      "paymentTermsId": "GUID",
      "shipmentMethod": "string",
      "lastModifiedDateTime": "DateTime"
}
```
