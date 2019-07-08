---
title: purchaseInvoiceLines resource type | Microsoft Docs
description: A purchase invoice line object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# purchaseInvoiceLines resource type
Represents a line on a purchase invoice in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET purchaseInvoiceLines](../api/dynamics-purchaseinvoiceline-get.md)|purchaseInvoiceLines|Gets a purchase invoice line object.|
|[POST purchaseInvoiceLines](../api/dynamics-create-purchaseinvoiceline.md)|purchaseInvoiceLines|Creates a purchase invoice line object.|
|[PATCH purchaseInvoiceLines](../api/dynamics-purchaseinvoiceline-update.md)|purchaseInvoiceLines|Updates a purchase invoice line object.|
|[DELETE purchaseInvoiceLines](../api/dynamics-purchaseinvoiceline-delete.md)|none   |Deletes a purchase invoice line object.|

## Properties

| Property     | Type   |Description|
|:---------------|:--------|:----------|
|documentId|GUID|The ID of the parent invoice.|
|sequence|numeric|The line sequence number.|
|itemId|GUID|The Id of the item in the invoice line.|
|accountId|GUID|The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType|string|The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails|complex|The details of the line.|
|description|string|A description of the item in the invoice line.|
|unitOfMeasure|[NAV.UnitOfMeasure](dynamics-complextypes.md)|The unit of measure complex type.|
|unitCost|numeric|The unit cost of each individual item in the invoice line.|
|quantity|numeric|The quantity of the item in the invoice line.|
|discountAmount|numeric|The line discount amount.|
|discountPercent|numeric|The line discount percent.|
|discountAppliedBeforeTax|boolean|Specified if the discount is applied before tax. Read-Only.|
|amountExcludingTax|numeric|The line amount excluding the tax. Read-Only.|
|taxCode|string|The tax code for the line.|
|taxPercent|numeric|The tax percent for the line. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the line. Read-Only.|
|amountIncludingTax|numeric|The total amount for the line including tax. Read-Only.|
|invoiceDiscountAllocation|numeric|The invoice discount allocation is the invoice discount distributed on the total amount. Read-Only.|
|netAmount|numeric|The net amount is the amount including all discounts (taken from invoice header). Read-Only.|
|netTaxAmount|numeric|The net tax amount is the tax amount calculated from net amount. Read-Only.|
|netAmountIncludingTax|numeric|The net amount including tax is the total net amount including tax. Read-Only.|
|expectedReceiptDate|date|The date the item in the line is expected to be received.|

## Relationships

| Relationship | Type	                           |Description|
|:-------------|:----------------------------------|:----------|
|documentId    |[purchaseInvoice](dynamics-purchaseinvoice.md) |Read-only. A Purchase Invoice must exist in the Purchase Invoices table.|
|itemId        |[item](dynamics-item.md) |Read-only. An itemId must exist in the Item table.|
|accountId     |[account](dynamics-account.md) |Read-only. An Account must exist in the Accounts table.|
|unitOfMeasure |[unitsOfMeasure](dynamics-unitsofmeasure.md) |Read-only. A Unit of Measure must exist in the Unit of Measure table.|


## JSON representation

Here is a JSON representation of the resource.


```json
  "value": [
    {
      "documentId": "GUID",
      "sequence": "decimal",
      "itemId": "GUID",
      "accountId": "GUID",
      "lineType": "String",
      "lineDetails": {NAV.documentLineObjectDetails},
      "description": "String",
      "unitOfMeasure": {NAV.UnitOfMeasure},
      "directUnitCost": "decimal",
      "unitCost": "decimal",
      "quantity": "decimal",
      "discountAmount": "decimal",
      "discountPercent": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "amountExcludingTax": "decimal",
      "taxCode": "String",
      "taxPercent": "decimal",
      "totalTaxAmount": "decimal",
      "amountIncludingTax": "decimal",
      "invoiceDiscountAllocation": "decimal",
      "netAmount": "decimal",
      "netTaxAmount": "decimal",
      "netAmountIncludingTax": "decimal",
      "expectedReceiptDate": "Date"
    }
  ]
```
