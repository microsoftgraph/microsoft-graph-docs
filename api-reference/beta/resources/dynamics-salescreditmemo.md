---
title: salesCreditMemos resource type | Microsoft Docs
description: A sales credit memo object in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# salesCreditMemos resource type
Represents a sales credit memo in Dynamics 365 Business Central. 


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[GET salesCreditMemos](../api/dynamics-salescreditmemo-get.md)|salesCreditMemos|Gets a sales credit memo object.|
|[POST salesCreditMemos](../api/dynamics-create-salescreditmemo.md)|salesCreditMemos|Creates a sales credit memo object.|
|[PATCH salesCreditMemos](../api/dynamics-salescreditmemo-update.md)|salesCreditMemos|Update a sales credit memo object.|
|[DELETE salesCreditMemos](../api/dynamics-salescreditmemo-delete.md)|none|Delete a sales credit memo object.|

## Bound actions

|Action          |Return type   |Description         |
|----------------|--------------|--------------------|
|[GET pdfDocument](../api/dynamics-salesquote-pdfdocument.md)|pdfDocument|Gets a PDF document.|


## Properties

| Property     | Type   |Description|
|:---------------|:--------|:----------|
|id|GUID|The credit memo ID. Non-editable.|
|number|string, maximum size 20|The credit memo number. Read-Only.|
|creditMemoDate|date|The credit memo date|
|dueDate|date|The date the credit memo is due.|
|customerId|GUID|The id of the credit memo customer.|
|contactId|string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerNumber|string, maximum size 20|The customer number for the credit memo.|
|customerName|string, maximum size 50|The full name of the customer. Read-Only.|
|currencyId|GUID|The id of the credit memo currency.|
|currencyCode|string, maximum size 10|The currency code for the credit memo.|
|paymentTermsId|GUID|The id of the credit memo payment term.|
|paymentTerms|string, maximum size 10|The payment terms of the credit memo.|
|salesperson|string, maximum size 20|The salesperson code for the credit memo.|
|pricesIncludeTax|boolean|Specifies whether the prices include Tax or not. Read-Only.|
|discountAmount|numeric|The credit memo discount amount|
|discountAppliedBeforeTax|boolean|Specifies whether the discount is applied before tax.|
|totalAmountExcludingTax|numeric|The total amount excluding tax. Read-Only.|
|totalTaxAmount|numeric|The total tax amount for the credit memo. Read-Only.|
|totalAmountIncludingTax|numeric|The total amount for the credit memo, including tax. Read-Only.|
|status|string, maximum size 20|The credit memo status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|invoiceId|GUID|The sales invoice ID that the credit memo is linked to.|
|invoiceNumber|GUID|The sales invoice number that the credit memo is linked to.|
|email           |string, maximum size 80|Email for the customer, cash sales|             |
|phone           |string, maximum size 30|Phone number for the customer, cash sales| 
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|sellingPostalAddress|Microsoft.NAV.postalAddressType| Selling postal address|
|billingPostalAddress|complex|The billing postal address for the credit memo.|
|lastModifiedDateTime|datetime|The last datetime the sales credit memo was modified. Read-Only.|


## Relationships
A Currency (currencyCode) must exist in the Currencies table.

A Payment Term (paymentTerms) must exist in the Payment Terms table.

A Customer (customerId) must exist in the Customer table.

An Invoice (invoiceId) must exist in the Sales Invoice table.

## JSON representation

Here is a JSON representation of the resource.


```json
{
      "id": "GUID",
      "number": "string",
      "creditMemoDate": "Date",
      "dueDate": "Date",
      "customerId": "GUID",
      "contactId": "string",
      "customerNumber": "string",
      "customerName": "string",
      "billingPostalAddress": {NAV.PostalAddress},
      "currencyId": "GUID",
      "currencyCode": "string",
      "paymentTermsId": "GUID",
      "salesperson": "string",
      "pricesIncludeTax": "boolean",
      "discountAmount": "decimal",
      "discountAppliedBeforeTax": "boolean",
      "totalAmountExcludingTax": "decimal",
      "totalTaxAmount": "decimal",
      "totalAmountIncludingTax": "decimal",
      "status": "string",
      "lastModifiedDateTime": "DateTime",
      "invoiceId" : "GUID",
      "invoiceNumber" : "string"
}
```