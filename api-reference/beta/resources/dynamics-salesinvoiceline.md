---
title: "salesInvoiceLine resource type"
description: "Represents an salesInvoiceLine object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesInvoiceLine resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesInvoiceLine object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesInvoiceLine](../api/dynamics-salesinvoiceline-get.md) | [salesInvoiceLine](dynamics-salesinvoiceline.md) | Read properties and relationships of salesInvoiceLine object. |
| [Update](../api/dynamics-salesinvoiceline-update.md) | [salesInvoiceLine](dynamics-salesinvoiceline.md) | Update salesInvoiceLine object. |
| [Delete](../api/dynamics-salesinvoiceline-delete.md) | None | Delete salesInvoiceLine object. |

## Properties

| Property                | Type    | Description                                               |
|:------------------------|:------|:----------------------------------------------------------|
|id                     |string       |The sales invoice line ID. Non-editable.                              |
|documentId               |GUID   |The ID of the parent invoice.                              |
|sequence                 |numeric|The line sequence number.                                  |
|itemId                   |GUID   |The Id of the item in the invoice line.                    |
|accountId                |GUID   |The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType                 |string |The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails              |complex|The details of the line.                                   |
|description              |string |A description of the item in the invoice line.             |
|unitOfMeasureId          |GUID   |The unit of measure for the invoice line.                  |
|unitOfMeasure            |[microsoft.graph.unitOfMeasure](dynamics-complextypes.md)|The unit of measure complex type.|
|quantity                 |numeric|The quantity of the item in the invoice line.              |
|unitPrice                |numeric|The unit price of each individual item in the invoice line.|
|discountAmount           |numeric|The line discount amount.                                  |
|discountPercent          |numeric|The line discount percent.                                 |
|discountAppliedBeforeTax |boolean|Specified if the discount is applied before tax. Read-Only.|
|amountExcludingTax       |numeric|The line amount excluding the tax. Read-Only.              |
|taxCode                  |string |The tax code for the line.                                 |
|taxPercent               |numeric|The tax percent for the line. Read-Only.                   |
|totalTaxAmount           |numeric|The total tax amount for the line. Read-Only.              |
|amountIncludingTax       |numeric|The total amount for the line including tax. Read-Only.    |
|invoiceDiscountAllocation|numeric|The invoice discount allocation is the invoice discount distributed on the total amount. Read-Only.|
|netAmount                |numeric|The net amount is the amount including all discounts (taken from invoice header). Read-Only.|
|netTaxAmount             |numeric|The net tax amount is the tax amount calculated from net amount. Read-Only.|
|netAmountIncludingTax    |numeric|The net amount including tax is the total net amount including tax. Read-Only.|
|shipmentDate             |date   |The date the item in the line is expected to ship.         |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Nullable.|
|item|[item](dynamics-item.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.salesInvoiceLine",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "accountId": "Guid",
  "amountExcludingTax": 1024,
  "amountIncludingTax": 1024,
  "description": "String",
  "discountAmount": 1024,
  "discountAppliedBeforeTax": true,
  "discountPercent": 1024,
  "documentId": "Guid",
  "id": "String (identifier)",
  "invoiceDiscountAllocation": 1024,
  "itemId": "Guid",
  "lineType": "String",
  "netAmount": 1024,
  "netAmountIncludingTax": 1024,
  "netTaxAmount": 1024,
  "quantity": 1024,
  "sequence": 1024,
  "shipmentDate": "String (timestamp)",
  "taxCode": "String",
  "taxPercent": 1024,
  "totalTaxAmount": 1024,
  "unitOfMeasureId": "Guid",
  "unitPrice": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "salesInvoiceLine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->