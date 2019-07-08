---
title: salesQuotes resource type | Microsoft Docs
description: A sales quote object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# salesQuotes resource type
Represents a salesQuote resource type in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET salesQuotes](../api/dynamics-salesquote-get.md)|salesQuotes|Gets a sales quote object.|
|[POST salesQuotes](../api/dynamics-create-salesquote.md)|salesQuotes|Creates a sales quote object.|
|[PATCH salesQuotes](../api/dynamics-salesquote-update.md)|salesQuotes|Updates a sales quote object.|
|[DELETE salesQuotes](../api/dynamics-salesquote-delete.md)|none|Deletes a sales quote object.|

## Bound actions

|Action          |Return type   |Description         |
|----------------|--------------|--------------------|
|makeInvoice|[salesInvoice](./dynamics-salesInvoice.md) | Creates a **salesInvoice** from the quote|
|send | |Sends the quote to the customer |  



## Properties

| Property     | Type   |Description|
|:---------------|:--------|:----------|
|id|GUID|The quote ID. Read-Only.|
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
|sellingPostalAddress|Microsoft.NAV.postalAddressType| Selling postal address|
|billingPostalAddress|Microsoft.NAV.postalAddressType| Billing postal address|
|shippingPostalAddress|Microsoft.NAV.postalAddressType| Shipping postal adress|
|lastModifiedDateTime|datetime|The last datetime the sales quote was modified. Read-Only.|


## Relationships

| Relationship | Type	                           |Description|
|:-------------|:----------------------------------|:----------|
|currencyCode  |[currencies](dynamics-currencies.md) |Read-only. A Currency must exist in the Currencies table.|
|paymentTerms  |[paymentTerms](dynamics-paymentterms.md) |Read-only. A Payment Term must exist in the Payment Terms table.|
|shipmentMethod|[shipmentMethods](dynamics-shipmentmethods.md)|Read-only. A Shipment Method must exist in the Shipment Method table.|
|customerId    |[customer](dynamics-customer.md) |Read-only. A Customer must exist in the Customer table.|

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "externalDocumentNumber": "string",
      "documentDate": "Date",
      "dueDate": "Date",
      "customerId": "GUID",
      "contactId": "string",
      "customerNumber": "string",
      "customerName": "string",
      "billingPostalAddress": {NAV.PostalAddress},
      "currencyId": "GUID",
      "currencyCode": "string",
      "paymentTermsId": "GUID",
      "shipmentMethodId": "GUID",
      "shipmentMethod": "string",
      "salesperson": "string",
      "discountAmount": "decimal",
      "totalAmountExcludingTax": "decimal",
      "totalTaxAmount": "decimal",
      "totalAmountIncludingTax": "decimal",
      "status": "string",
      "sentDate": "DateTime",
      "validUntilDate": "Date",
      "acceptedDate": "Date",
      "lastModifiedDateTime": "DateTime"
}
```
