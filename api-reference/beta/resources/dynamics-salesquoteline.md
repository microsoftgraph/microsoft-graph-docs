---
title: "salesQuoteLine resource type"
description: "Represents an salesQuoteLine object in Dynamics 365 Business Central."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesQuoteLine resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesQuoteLine object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesQuoteLine](../api/dynamics-salesquoteline-get.md) | [salesQuoteLine](dynamics-salesquoteline.md) | Read properties and relationships of salesQuoteLine object. |
| [Update](../api/dynamics-salesquoteline-update.md) | [salesQuoteLine](dynamics-salesquoteline.md) | Update salesQuoteLine object. |
| [Delete](../api/dynamics-salesquoteline-delete.md) | None | Delete salesQuoteLine object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|documentId|GUID|The ID of the parent quote.|
|sequence|numeric|The line sequence number.|
|itemId|GUID|The Id of the item in the quote line.|
|accountId|GUID|The Id of the Account that will be used for this line. lineType will automatically be set to "Account" if this is set.|
|lineType|string|The type of the line. Can be Comment,Account,Item,Resource,Fixed Asset,Charge|
|lineDetails|complex|The details of the line.|
|description|string|A description of the item in the quote line.|
|unitOfMeasureId|GUID|The Id of the unit of measure in the quote line.|
|unitOfMeasure|[microsoft.graph.unitOfMeasure](../resources/dynamics-complextypes.md)|The unit of measure complex type.|
|unitPrice|numeric|The unit price of each individual item in the quote line.|
|quantity|numeric|The quantity of the item in the quote line.|
|discountAmount|numeric|The line discount amount.|
|discountPercent|numeric|The line discount percent.|
|discountAppliedBeforeTax|boolean|Specified if the discount is applied before tax. Read-Only.|
|amountExcludingTax|numeric|The line amount excluding the tax. Read-Only.|
|taxCode|string|The tax code for the line.|
|taxPercent|decimal|The tax percent for the line.|
|totalTaxAmount|numeric|The total tax amount for the line. Read-Only.|
|amountIncludingTax|numeric|The total amount for the line including tax. Read-Only.|
|netAmount|numeric|The net amount is the amount including all discounts (taken from quote header). Read-Only.|
|netTaxAmount|numeric|The net tax amount is the tax amount calculated from net amount. Read-Only.|
|netAmountIncludingTax|numeric|The net amount including tax is the total net amount including tax. Read-Only.|

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
  "@odata.type": "microsoft.graph.salesQuoteLine",
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
  "unitOfMeasureId": "Guid",
  "unitPrice": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "salesQuoteLine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->