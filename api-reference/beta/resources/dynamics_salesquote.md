---
title: salesQuotes resource type | Microsoft Docs
description: A sales quote object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-businesscentral
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 03/19/2018
ms.author: solsen
---

# salesQuotes resource type
Represents a salesQuote resource type in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET salesQuotes](../api/dynamics_salesquote_get.md)|salesQuotes|Gets a sales quote object.|
|[POST salesQuotes](../api/dynamics_create_salesquote.md)|salesQuotes|Creates a sales quote object.|
|[PATCH salesQuotes](../api/dynamics_salesquote_update.md)|salesQuotes|Updates a sales quote object.|
|[DELETE salesQuotes](../api/dynamics_salesquote_delete.md)|none|Deletes a sales quote object.|



## Properties
| Property	   | Type	|Description|
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
|billingPostalAddress|complex|The billing postal address for the quote.|  
|currencyId|GUID|The id of the quote currency.|
|currencyCode|string, maximum size 10|The currency code for the quote.|
|paymentTermsId|GUID|The id of the quote payment term.|
|shipmentMethodId|GUID|The id of the quote shipment method.|
|salesperson|string, maximum size 20|The salesperson code for the quote.|
|discountAmount|numeric|The quote discount amount|
|totalAmountExcludingTax|numeric|The total amount excluding tax. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the quote. Read-Only.|
|totalAmountIncludingTax|numeric|The total amount for the quote, including tax. Read-Only.|
|status|string, maximum size 20|The quote status. Status can be: Draft,Sent,Accepted. Read-Only.|
|sentDate|datetime|The the date and time the quote was sent our to the customer. Read-Only.|
|validUntilDate|Date|The date a quote is valid until.|
|acceptedDate|Date|The date a quote is accepted. Read-Only.|
|lastModifiedDateTime|datetime|The last datetime the sales quote was modified. Read-Only.|


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
## Bound actions
The sales quote resource type offers bound actions, which perform actions associated with actions available to perform in the Business Central application. 

| Action	            |Description                                                |
|:----------------------|:----------------------------------------------------------|
|makeInvoice            |Creates an invoice record from the corresponding sales quote. |
|send                   |Sends the corresponding quote document to the customer.|

Performing an action against the sales invoice is illustrated in the following example:  
`POST https://graph.microsoft.com/beta/financials/companies({id})/salesQuotes({id})/makeInvoice`.

The response has no content; the response code is 204. For the `makeInvoice` action, the Location response header contains the URL of the invoice created by the action for the quote. For example:
`https://graph.microsoft.com/beta/financials/companies({id})/salesInvoices({id})`

## See also
[Graph Reference](../api/dynamics_graph_reference.md)  
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Sales Quote](../api/dynamics_salesquote_get.md)  
[Create Sales Quote](../api/dynamics_create_salesquote.md)  
[Update Sales Quote](../api/dynamics_salesquote_update.md)  
[Delete Sales Quote](../api/dynamics_salesquote_delete.md)  
