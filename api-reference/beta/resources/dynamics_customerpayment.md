---
title: customerPayments resource type 
description: A customer payments object in Dynamics 365 Business Central.
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

# customerPayments resource type
Represents a customer payment in Dynamics 365 Business Central. A customer payment is entered as a line in a customer payment journal.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get customerPayments](../api/dynamics_customerpayment_get.md)|customerPayments|Gets a customer payment.|
|[Post customerPayments](../api/dynamics_create_customerpayment.md)|customerPayments|Creates a customer payment.|
|[Patch customerPayments](../api/dynamics_customerpayment_update.md)|customerPayments|Updates a customer payment.|
|[Delete customerPayments](../api/dynamics_customerpayment_delete.md)|none|Deletes a customer payment.|

## Properties
| Property	   | Type	 |Description|
|:-------------|:--------|:----------|
|id|GUID|The unique ID of the customer payment. Non-editable.|
|journalDisplayName|string|The customer payment journal in which the payment record is a line.|
|lineNumber|integer|The number of the customer payment.|
|customerId|GUID|The unique ID of the customer that the payment is related to.|
|customerNumber|string, maximum size 20|The number of the customer that the payment is related to.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|postingDate|date|The date that the customer payment is posted.|
|documentNumber|string, maximum size 20|Specifies a document number for the customer payment.|
|externalDocumentNumber|string, maximum size 20|Specifies an external document number for the customer payment.|
|amount|decimal|Specifies the total amount (including VAT) that the customer payment consists of.|
|appliesToInvoiceId|GUID|The unique ID of the invoice that the payment is related to.|
|appliesToInvoiceNumber|string, maximum size 20|The number of the invoice that the payment is related to.|
|description|string, maximum size 50|The description of the customer payment, provided by the user or autocreated.|
|comment|string, maximum size 250|A user specified comment on the customer payment.|
|lastModifiedDateTime|datetime|The last datetime the customer payment was modified. Read-Only.|


## Relationships
A customer payment is a subpage of a customer payment journal. It cannot be accessed directly.

A customer payment can be a "Parent Entity" of the dimension lines.

A Customer (customerId) must exist in the Customers table.

An Invoice (appliesToInvoiceId) must exist in the Sales Invoices Table.


## JSON representation

Here is a JSON representation of the resource.

```json
{
    "id": "GUID",
    "journalDisplayName": "string",
    "lineNumber": "integer",
    "customerId": "GUID",
    "customerNumber": "string",
    "contactId": "string",
    "postingDate": "date",
    "documentNumber": "string",
    "externalDocumentNumber": "string",
    "amount": "decimal",
    "appliesToInvoiceId": "GUID",
    "appliesToInvoiceNumber": "string",
    "description": "string",
    "comment": "string",
    "lastModifiedDateTime": "datetime"
}
```

