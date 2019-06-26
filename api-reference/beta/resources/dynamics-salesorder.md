---
title: salesOrders resource type | Microsoft Docs
description: A sales order object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# salesOrders resource type
Represents a sales order in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET salesOrders](../api/dynamics-salesorder-get.md)|salesOrders|Get a sales order object.|
|[POST salesOrders](../api/dynamics-create-salesorder.md)|salesOrders|Create a sales order object.|
|[PATCH salesOrders](../api/dynamics-salesorder-update.md)|salesOrders|Update a sales order object.|
|[DELETE salesOrders](../api/dynamics-salesorder-delete.md)|none|Delete a sales order object.|

## Properties

| Property     | Type   |Description|
|:---------------|:--------|:----------|
|id|GUID|The order ID. Non-editable.|
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
|sellingPostalAddress|Microsoft.NAV.postalAddressType| Selling postal address|
|billingPostalAddress|Microsoft.NAV.postalAddressType| Billing postal address|
|shippingPostalAddress|Microsoft.NAV.postalAddressType| Shipping postal adress|
|lastModifiedDateTime|datetime|The last datetime the sales order was modified. Read-Only.|


## Relationships
A Currency(currencyCode) must exist in the Currencies table.

A Payment Term(paymentTerms) must exist in the Payment Terms table.

A Shipment Method(shipmentMethod) must exist in the Shipment Method table.

A Customer (customerId) must exist in the Customer table.

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "orderDate": "Date",
      "customerId": "GUID",
      "contactId": "string",
      "customerNumber": "string",
      "customerName": "string",
      "billingPostalAddress": {NAV.PostalAddress},
      "currencyId": "GUID",
      "currencyCode": "string",
      "pricesIncludeTax": "boolean",
      "paymentTermsId": "GUID",
      "salesperson": "string",
      "partialShipping": "boolean",
      "requestedDeliveryDate": "Date",
      "discountAmount": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "totalAmountExcludingTax": "decimal",
      "totalTaxAmount": "decimal",
      "totalAmountIncludingTax": "decimal",
      "fullyShipped": "boolean",
      "status": "string",
      "lastModifiedDateTime": "DateTime"
}
```
