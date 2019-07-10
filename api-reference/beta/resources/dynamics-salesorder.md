---
title: "salesOrder resource type"
description: "Represents an salesOrder object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesOrder resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesOrder object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesOrder](../api/dynamics-salesorder-get.md) | [salesOrder](dynamics-salesorder.md) | Read properties and relationships of salesOrder object. |
| [Create salesOrderLine](../api/dynamics-salesorder-post-salesorderlines.md) | [salesOrderLine](dynamics-salesorderline.md) | Create a new salesOrderLine by posting to the salesOrderLines collection. |
| [List salesOrderLines](../api/dynamics-salesorder-list-salesorderlines.md) | [salesOrderLine](dynamics-salesorderline.md) collection | Get a salesOrderLine object collection. |
| [Update](../api/dynamics-salesorder-update.md) | [salesOrder](dynamics-salesorder.md) | Update salesOrder object. |
| [Delete](../api/dynamics-salesorder-delete.md) | None | Delete salesOrder object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The order ID. Non-editable.|
|number|string, maximum size 20|The order number. Read-Only.|
|orderDate|date|The order date|
|customerId|GUID|The id of the order customer.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerNumber|string, maximum size 20|The customer number for the order.|
|customerName|string, maximum size 50|The full name of the customer. Read-Only.|
|billingPostalAddress|complex|The billing postal address for the order.|  
|currencyId|GUID|The id of the order currency.|
|currencyCode|string, maximum size 10|The currency code for the order.|
|pricesIncludeTax|boolean|Specifies whether the prices include Tax or not. Read-Only.|
|paymentTermsId|GUID|The id of the order payment term.|
|paymentTerms|string, maximum size 10|The payment terms of the order.|
|salesperson|string, maximum size 20|The salesperson code for the order.|
|partialShipping|boolean|Specifies whether partial shipping of items is preferred or not.|
|requestedDeliveryDate|Date|The requested delivery date.|
|discountAmount|numeric|The order discount amount|
|discountAppliedBeforeTax|boolean|Specifies whether the discount is applied before tax. Read-Only.|
|totalAmountExcludingTax|numeric|The total amount excluding tax. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the order. Read-Only.|
|totalAmountIncludingTax|numeric|The total amount for the order, including tax. Read-Only.|
|fullyShipped|boolean|Specifies whether the items of the order were fully shipped or not.|
|status|string, maximum size 20|The order status. Status can be: Draft, Cancelled, Paid, On hold, Created. Read-Only.|
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|shipToName   |string, maximum size 100   |Name of the customer in ship to address.|
|shipToContact   |string, maximum size 100   |Ship to contact|
|sellingPostalAddress|microsoft.graph.postalAddressType| Selling postal address|
|billingPostalAddress|microsoft.graph.postalAddressType| Billing postal address|
|shippingPostalAddress|microsoft.graph.postalAddressType| Shipping postal adress|
|lastModifiedDateTime|datetime|The last datetime the sales order was modified. Read-Only.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|customer|[customer](dynamics-customer.md)| Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Nullable.|
|salesOrderLines|[salesOrderLine](dynamics-salesorderline.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.salesOrder",
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
  "discountAmount": 1024,
  "discountAppliedBeforeTax": true,
  "email": "String",
  "externalDocumentNumber": "String",
  "fullyShipped": true,
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "orderDate": "String (timestamp)",
  "partialShipping": true,
  "paymentTermsId": "Guid",
  "phoneNumber": "String",
  "pricesIncludeTax": true,
  "requestedDeliveryDate": "String (timestamp)",
  "salesperson": "String",
  "sellingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "shipToContact": "String",
  "shipToName": "String",
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
  "description": "salesOrder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->