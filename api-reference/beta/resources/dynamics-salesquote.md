---
title: "salesQuote resource type"
description: "Represents an salesQuote object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# salesQuote resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an salesQuote object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get salesQuote](../api/dynamics-salesquote-get.md) | [salesQuote](dynamics-salesquote.md) | Read properties and relationships of salesQuote object. |
| [Create salesQuoteLine](../api/dynamics-salesquote-post-salesquotelines.md) | [salesQuoteLine](dynamics-salesquoteline.md) | Create a new salesQuoteLine by posting to the salesQuoteLines collection. |
| [List salesQuoteLines](../api/dynamics-salesquote-list-salesquotelines.md) | [salesQuoteLine](dynamics-salesquoteline.md) collection | Get a salesQuoteLine object collection. |
| [Update](../api/dynamics-salesquote-update.md) | [salesQuote](dynamics-salesquote.md) | Update salesQuote object. |
| [Delete](../api/dynamics-salesquote-delete.md) | None | Delete salesQuote object. |
|[Makeinvoice](../api/dynamics-salesquote-makeinvoice.md)|None||
|[Send](../api/dynamics-salesquote-send.md)|None||

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The quote ID. Read-Only.|
|number|string, maximum size 20|The quote number. Read-Only.|
|externalDocumentNumber|string, maximum size 35|The external document number.|
|documentDate|date|The quote date|
|dueDate|date|The quote due date|
|customerId|GUID|The id of the quote customer.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerNumber|string, maximum size 20|The customer number for the quote.|
|customerName|string, maximum size 50|The full name of the customer. Read-Only.|
|phoneNumber | string, maximum size 30|  Phone number for customer|
|email |string, maximum size 80 | Email for customer|
|billingPostalAddress|complex|The billing postal address for the quote.|  
|currencyId|GUID|The id of the quote currency.|
|currencyCode|string, maximum size 10|The currency code for the quote.|
|paymentTermsId|GUID|The id of the quote payment term.|
|paymentTerms|string, maximum size 10|The payment terms of the quote.|
|shipmentMethodId|GUID|The id of the quote shipment method.|
|shipmentMethod|string, maximum size 10|The payment terms of the quote.|
|salesperson|string, maximum size 20|The salesperson code for the quote.|
|discountAmount|numeric|The quote discount amount|
|totalAmountExcludingTax|numeric|The total amount excluding tax. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the quote. Read-Only.|
|totalAmountIncludingTax|numeric|The total amount for the quote, including tax. Read-Only.|
|status|string, maximum size 20|The quote status. Status can be: Draft,Sent,Accepted. Read-Only.|
|sentDate|datetime|The the date and time the quote was sent our to the customer. Read-Only.|
|validUntilDate|Date|The date a quote is valid until.|
|acceptedDate|Date|The date a quote is accepted. Read-Only.|
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|shipToName   |string, maximum size 100   |Name of the customer in ship to address.|
|shipToContact   |string, maximum size 100   |Ship to contact|
|sellingPostalAddress|microsoft.graph.postalAddressType| Selling postal address|
|billingPostalAddress|microsoft.graph.postalAddressType| Billing postal address|
|shippingPostalAddress|microsoft.graph.postalAddressType| Shipping postal adress|
|lastModifiedDateTime|datetime|The last datetime the sales quote was modified. Read-Only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|currency|[currency](dynamics-currency.md)| Nullable.|
|customer|[customer](dynamics-customer.md)| Nullable.|
|paymentTerm|[paymentTerm](dynamics-paymentterm.md)| Nullable.|
|salesQuoteLines|[salesQuoteLine](dynamics-salesquoteline.md) collection| Nullable.|
|shipmentMethod|[shipmentMethod](dynamics-shipmentmethod.md)| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.salesQuote",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "acceptedDate": "String (timestamp)",
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
  "documentDate": "String (timestamp)",
  "dueDate": "String (timestamp)",
  "email": "String",
  "externalDocumentNumber": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "paymentTermsId": "Guid",
  "phoneNumber": "String",
  "salesperson": "String",
  "sellingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "sentDate": "String (timestamp)",
  "shipToContact": "String",
  "shipToName": "String",
  "shipmentMethodId": "Guid",
  "shippingPostalAddress": {"@odata.type": "microsoft.graph.postalAddressType"},
  "status": "String",
  "totalAmountExcludingTax": 1024,
  "totalAmountIncludingTax": 1024,
  "totalTaxAmount": 1024,
  "validUntilDate": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "salesQuote resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->