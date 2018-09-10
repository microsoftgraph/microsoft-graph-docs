---
title: salesInvoices resource type | Microsoft Docs
description: A sales invoice object in Dynamics 365 Business Central. 
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

# salesInvoices resource type
Represents a sales invoice in Dynamics 365 Business Central. 

## Methods

| Method                                                       | Return Type |Description                    |
|:-------------------------------------------------------------|:------------|:------------------------------|
|[GET salesInvoices](../api/dynamics_salesinvoice_get.md)      |salesInvoices|Gets a sales invoice object.   |
|[POST salesInvoices](../api/dynamics_create_salesinvoice.md)  |salesInvoices|Creates a sales invoice object.|
|[PATCH salesInvoices](../api/dynamics_salesinvoice_update.md) |salesInvoices|Updates a sales invoice object.|
|[DELETE salesInvoices](../api/dynamics_salesinvoice_delete.md)|none         |Deletes a sales invoice object.|


## Properties
| Property	            | Type	|Description                                                |
|:----------------------|:----------|:----------------------------------------------------------|
|id                     |GUID       |The invoice ID. Non-editable.                              |
|number                 |string, maximum size 20|The invoice number. Read-Only.                 |
|externalDocumentNumber |string, maximum size 35|The external document number assigned to the invoice.|
|invoiceDate            |date       |The invoice date.                                           |
|dueDate                |date       |The date the invoice is due.                               |
|customerPurchaseOrderReference|string, maximum size 35|The customer purchase order reference for the invoice|
|customerId             |GUID       |The id of the invoice customer.                            |
|contactId              |string, maximum size 250|The Exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerNumber         |string, maximum size 20|The customer number for the invoice.           |
|customerName           |string, maximum size 50|The full name of the customer. Read-Only.      |
|billingPostalAddress   |complex    |The billing postal address for the invoice.                |
|currencyId             |GUID       |The id of the invoice currency.                            |
|currencyCode           |string, maximum size 10|The currency code for the invoice.             |
|orderId                |GUID       |The unique id of the order to which the invoice is associated to. Read-Only.|
|orderNumber            |string, maximum size 20|The number of the order to which the invoice is associated to. Read-Only.|
|paymentTermsId         |GUID       |The id of the invoice payment term.                        |
|shipmentMethodId       |GUID       |The id of the invoice shipment method.                     |
|salesperson            |string, maximum size 20|The salesperson code for the invoice.          |
|pricesIncludeTax       |boolean    |Specifies whether the prices include Tax or not. Read-Only.|
|discountAmount         |numeric    |The invoice discount amount.                                |
|discountAppliedBeforeTax|boolean   |Specifies whether the discount is applied before tax.      |
|totalAmountExcludingTax|numeric    |The total amount excluding tax. Read-Only.                 |
|totalTaxAmount         |numeric    |The total tax amount for the invoice. Read-Only.           |
|totalAmountIncludingTax|numeric    |The total amount for the invoice, including tax. Read-Only.|
|status                 |string, maximum size 20|The invoice status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|lastModifiedDateTime   |datetime   |The last datetime the sales invoice was modified. Read-Only.|

## Relationships
A Currency (currencyCode) must exist in the Currencies table.

A Payment Term (paymentTerms) must exist in the Payment Terms table.

A Shipment Method (shipmentMethod) must exist in the Shipment Method table.

A Customer (customerId) must exist in the Customer table.

An Order (orderId) must exist in the Sales Orders table.

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "externalDocumentNumber": "string",
      "invoiceDate": "Date",
      "dueDate": "Date",
      "customerPurchaseOrderReference": "string",
      "customerId": "GUID",
      "contactId": "string",
      "customerNumber": "string",
      "customerName": "string",
      "billingPostalAddress": {NAV.PostalAddress},
      "currencyId": "GUID",
      "currencyCode": "string",
      "orderId": "GUID",
      "orderNumber": "string",
      "paymentTermsId": "GUID",
      "shipmentMethodId": "GUID",
      "salesperson": "string",
      "pricesIncludeTax": "boolean",
      "discountAmount": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "totalAmountExcludingTax": "decimal",
      "totalTaxAmount": "decimal",
      "totalAmountIncludingTax": "decimal",
      "status": "string",
      "lastModifiedDateTime": "DateTime"
}

```

## Bound actions
The sales invoice resource type offers bound actions, which perform actions associated with actions available to perform in the Business Central application. 

| Action	            |Description                                                |
|:----------------------|:----------------------------------------------------------|
|post                   |Posts the corresponding invoice.                              |
|postAndSend            |Posts the corresponding invoice and sends the document to the customer.|
|send                   |Sends the corresponding invoice document to the customer.|
|cancel                 |Cancels the corresponding invoice.           |
|cancelAndSend          |Cancels the corresponding invoice and sends the canceled record to the customer. |

Performing an action against the sales invoice is illustrated in the following example:  
`POST https://graph.microsoft.com/beta/financials/companies({id})/salesInvoices({id})/post`.

The response has no content; the response code is 204.

## See also
[Graph Reference](../api/dynamics_graph_reference.md)  
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  

[Get Sales Invoice](../api/dynamics_salesinvoice_get.md)  
[Create Sales Invoice](../api/dynamics_create_salesinvoice.md)  
[Update Sales Invoice](../api/dynamics_salesinvoice_update.md)  
[Delete Sales Invoice](../api/dynamics_salesinvoice_delete.md)  
