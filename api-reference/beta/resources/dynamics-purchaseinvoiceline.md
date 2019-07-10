---
title: "purchaseInvoiceLine resource type"
description: "Represents an purchaseInvoiceLine object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# purchaseInvoiceLine resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an purchaseInvoiceLine object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get purchaseInvoiceLine](../api/dynamics-purchaseinvoiceline-get.md) | [purchaseInvoiceLine](dynamics-purchaseinvoiceline.md) | Read properties and relationships of purchaseInvoiceLine object. |
| [Update](../api/dynamics-purchaseinvoiceline-update.md) | [purchaseInvoiceLine](dynamics-purchaseinvoiceline.md) | Update purchaseInvoiceLine object. |
| [Delete](../api/dynamics-purchaseinvoiceline-delete.md) | None | Delete purchaseInvoiceLine object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Id of the purchase invoice line.|
|documentId|GUID|The ID of the parent invoice.|
|sequence|numeric|The line sequence number.|
|itemId|GUID|The Id of the item in the invoice line.|
|accountId|GUID|The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType|string|The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails|complex|The details of the line.|
|description|string|A description of the item in the invoice line.|
|unitOfMeasure|[microsoft.graph.unitOfMeasure](../resources/dynamics_complextypes.md)|The unit of measure complex type.|
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

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|account|[account](dynamics-account.md)| Read-only. Nullable.|
|item|[item](dynamics-item.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.purchaseInvoiceLine",
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
  "expectedReceiptDate": "String (timestamp)",
  "id": "String (identifier)",
  "invoiceDiscountAllocation": 1024,
  "itemId": "Guid",
  "lineType": "String",
  "netAmount": 1024,
  "netAmountIncludingTax": 1024,
  "netTaxAmount": 1024,
  "quantity": 1024,
  "sequence": 1024,
  "taxCode": "String",
  "taxPercent": 1024,
  "totalTaxAmount": 1024,
  "unitCost": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "purchaseInvoiceLine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->