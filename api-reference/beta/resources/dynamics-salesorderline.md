---
title: "salesOrderLine resource type"
description: "Represents an salesOrderLine object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesOrderLine resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesOrderLine object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesOrderLine](../api/dynamics-salesorderline-get.md) | [salesOrderLine](dynamics-salesorderline.md) | Read properties and relationships of salesOrderLine object. |
| [Update](../api/dynamics-salesorderline-update.md) | [salesOrderLine](dynamics-salesorderline.md) | Update salesOrderLine object. |
| [Delete](../api/dynamics-salesorderline-delete.md) | None | Delete salesOrderLine object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The ID of the order line.|
|documentId|GUID|The ID of the parent order.|
|sequence|numeric|The line sequence number.|
|itemId|GUID|The Id of the item in the order line.|
|accountId|GUID|The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType|string|The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails|complex|The details of the line.|
|description|string|A description of the item in the order line.|
|unitOfMeasureId|GUID|The Id of the unit of measure in the order line.|
|unitOfMeasure|[microsoft.graph.unitOfMeasure](../resources/dynamics_complextypes.md)|The unit of measure complex type.|
|quantity|numeric|The quantity of the item in the order line.|
|unitPrice|numeric|The unit price of each individual item in the order line.|
|discountAmount|numeric|The line discount amount.|
|discountPercent|numeric|The line discount percent.|
|discountAppliedBeforeTax|boolean|Specified if the discount is applied before tax. Read-Only.|
|amountExcludingTax|numeric|The line amount excluding the tax. Read-Only.|
|taxCode|string|The tax code for the line.|
|taxPercent|numeric|The tax percent for the line. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the line. Read-Only.|
|amountIncludingTax|numeric|The total amount for the line including tax. Read-Only.|
|invoiceDiscountAllocation|numeric|The invoice discount allocation is the order discount distributed on the total amount. Read-Only.|
|netAmount|numeric|The net amount is the amount including all discounts (taken from order header). Read-Only.|
|netTaxAmount|numeric|The net tax amount is the tax amount calculated from net amount. Read-Only.|
|netAmountIncludingTax|numeric|The net amount including tax is the total net amount including tax. Read-Only.|
|shipmentDate|date|The date the item in the line is expected to ship.|
|shippedQuantity|numeric|The quantity of items from the order already shipped.|
|invoicedQuantity|numeric|The quantity of items from the order already invoiced.|
|invoiceQuantity|numeric|The quantity of items from the order to be invoiced.|
|shipQuantity|numeric|The quantity of items from the order to be shipped.|

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
  "@odata.type": "microsoft.graph.salesOrderLine",
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
  "invoiceQuantity": 1024,
  "invoicedQuantity": 1024,
  "itemId": "Guid",
  "lineType": "String",
  "netAmount": 1024,
  "netAmountIncludingTax": 1024,
  "netTaxAmount": 1024,
  "quantity": 1024,
  "sequence": 1024,
  "shipQuantity": 1024,
  "shipmentDate": "String (timestamp)",
  "shippedQuantity": 1024,
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
  "description": "salesOrderLine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->