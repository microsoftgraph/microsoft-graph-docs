---
title: salesCreditMemoLines resource type | Microsoft Docs
description: A sales credit memo line. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# salesCreditMemoLines resource type
Represents a line on a sales credit memo line in Dynamics 365 Business Central.


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET salesCreditMemoLines](../api/dynamics-salescreditmemoline-get.md)|salesCreditMemoLines|Gets a sales credit memo line object.|
|[POST salesCreditMemoLines](../api/dynamics-create-salescreditmemoline.md)|salesCreditMemoLines|Creates a sales credit memo line object.|
|[PATCH salesCreditMemoLines](../api/dynamics-salescreditmemoline-update.md)|salesCreditMemoLines|Updates a sales credit memo line object.|
|[DELETE salesCreditMemoLines](../api/dynamics-salescreditmemoline-delete.md)|none   |Deletes a sales credit memo line object.|

## Properties

| Property     | Type   |Description|
|:---------------|:--------|:----------|
|documentId|GUID|The ID of the parent credit memo.|
|sequence|numeric|The line sequence number.|
|itemId|GUID|The Id of the item in the credit memo line.|
|accountId|GUID|The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType|string|The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails|complex|The details of the line.|
|description|string|A description of the item in the credit memo line.|
|unitOfMeasureId|GUID|The unit of measure for the credit memo line.|
|unitOfMeasure|[NAV.UnitOfMeasure](dynamics-complextypes.md)|The unit of measure complex type.|
|quantity|numeric|The quantity of the item in the credit memo line.|
|unitPrice|numeric|The unit price of each individual item in the credit memo line.|
|discountAmount|numeric|The line discount amount.|
|discountPercent|numeric|The line discount percent.|
|discountAppliedBeforeTax|boolean|Specified if the discount is applied before tax. Read-Only.|
|amountExcludingTax|numeric|The line amount excluding the tax. Read-Only.|
|taxCode|string|The tax code for the line.|
|taxPercent|numeric|The tax percent for the line. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the line. Read-Only.|
|amountIncludingTax|numeric|The total amount for the line including tax. Read-Only.|
|invoiceDiscountAllocation|numeric|The credit memo discount allocation is the credit memo discount distributed on the total amount. Read-Only.|
|netAmount|numeric|The net amount is the amount including all discounts (taken from credit memo header). Read-Only.|
|netTaxAmount|numeric|The net tax amount is the tax amount calculated from net amount. Read-Only.|
|netAmountIncludingTax|numeric|The net amount including tax is the total net amount including tax. Read-Only.|
|shipmentDate|date|The date the item in the line is expected to ship.|

## Relationships
| Relationship | Type	                           |Description|
|:-------------|:----------------------------------|:----------|
|documentId    |[salescreditmemo](dynamics-salescreditmemo.md) |Read-only. A Sales Credit Memo must exist in the Sales Credit Memo table.|
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
      "lineType": "string",
      "lineDetails": {NAV.documentLineObjectDetails},
      "description": "string",
      "unitOfMeasureId": "GUID",
      "unitOfMeasure": {NAV.UnitOfMeasure},
      "unitPrice": "decimal",
      "quantity": "decimal",
      "discountAmount": "decimal",
      "discountPercent": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "amountExcludingTax": "decimal",
      "taxCode": "string",
      "taxPercent": "decimal",
      "totalTaxAmount": "decimal",
      "amountIncludingTax": "decimal",
      "invoiceDiscountAllocation": "decimal",
      "netAmount": "decimal",
      "netTaxAmount": "decimal",
      "netAmountIncludingTax": "decimal",
      "shipmentDate": "Date"
    }
  ]
```
