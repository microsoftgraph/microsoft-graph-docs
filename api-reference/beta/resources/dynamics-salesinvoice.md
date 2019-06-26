---
title: salesInvoices resource type | Microsoft Docs
description: A sales invoice object in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-financials
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 04/01/2019
ms.author: solsen
---

# salesInvoices resource type
Represents a sales invoice in [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)]. 

> [!NOTE]  
> For information about enabling APIs for [!INCLUDE[navnow](../../includes/navnow_md.md)] see [Enabling the APIs for Microsoft Dynamics NAV](../enabling-apis-for-dynamics-nav.md).

## Methods

| Method                                                       | Return Type |Description                    |
|:-------------------------------------------------------------|:------------|:------------------------------|
|[GET salesInvoices](../api/dynamics_salesinvoice_get.md)      |salesInvoices|Gets a sales invoice object.   |
|[POST salesInvoices](../api/dynamics_create_salesinvoice.md)  |salesInvoices|Creates a sales invoice object.|
|[PATCH salesInvoices](../api/dynamics_salesinvoice_update.md) |salesInvoices|Updates a sales invoice object.|
|[DELETE salesInvoices](../api/dynamics_salesinvoice_delete.md)|none         |Deletes a sales invoice object.|

## Navigation 

|Navigation          |Return type   |Description         |
|----------------|--------------|--------------------|
|[pdfDocument](../api/dynamics_salesquote_pdfdocument.md)|pdfDocument|Gets a PDF document.|
|[currency](../resources/dynamics_currencies.md)|currency   |Gets the currency. |
|[paymentTerm](../resources/dynamics_paymentTerms.md)|paymentTerm   |Gets the paymentTerm. |
|[shipmentMethod](../resources/dynamics_shipmentMethods.md)|paymentMethod   |Gets the paymentMethod. |
|[customer](../resources/dynamics_customer.md)|paymentMethod   |Gets the customer. |
|[salesInvoiceLines](../resources/dynamics_salesinvoiceline.md)|paymentMethod   |Gets the paymentMethod. |



## Properties

| Property              | Type  |Description                                                |
|:----------------------|:----------|:----------------------------------------------------------|
|id                     |GUID       |The invoice ID. Non-editable.                              |
|number                 |string, maximum size 20|The invoice number. Read-Only.                 |
|externalDocumentNumber|string |The external document number |
|invoiceDate            |date       |The invoice date.                                           |
|customerPurchaseOrderReference|string, maximum size 35|The customer purchase order reference for the invoice|
|dueDate                |date       |The date the invoice is due.                               |
|customerNumber         |string, maximum size 20|The customer number for the invoice.           |
|contactId              |string, maximum size 250|The exchange contact id for the given customer. If a customer id is not specified, we will use the contact id to find it.|
|customerId             |GUID       |The id of the invoice customer.                            |
|customerName           |string, maximum size 50|The full name of the customer. Read-Only.      |
|currencyId             |GUID       |The id of the invoice currency.                            |
|currencyCode           |string, maximum size 10|The currency code for the invoice.             |
|email           |string, maximum size 80|Email for the customer, cash sales|             |
|phone           |string, maximum size 30|Phone number for the customer, cash sales| 
|orderId                |GUID       |The unique id of the order to which the invoice is associated to. Read-Only.|
|orderNumber            |string, maximum size 20|The number of the order to which the invoice is associated to. Read-Only.|
|status                 |string, maximum size 20|The invoice status. Status can be: Draft, In Review, Open, Paid, Canceled, or Corrective. Read-Only.|
|discountAmount         |numeric    |The invoice discount amount.                                |
|discountAppliedBeforeTax|boolean   |Specifies whether the discount is applied before tax.      |
|totalAmountExcludingTax|numeric    |The total amount excluding tax. Read-Only.                 |
|totalTaxAmount         |numeric    |The total tax amount for the invoice. Read-Only.           |
|totalAmountIncludingTax|numeric    |The total amount for the invoice, including tax. Read-Only.|
|pricesIncludeTax       |boolean    |Specifies whether the prices include Tax or not. Read-Only.|
|billingPostalAddress   |complex    |The billing postal address for the invoice.                |  
|paymentTermsId         |GUID       |The id of the invoice payment term.                        |
|paymentTerms           |string, maximum size 10|The payment terms of the invoice.              |
|shipmentMethodId       |GUID       |The id of the invoice shipment method.                     |
|shipmentMethod         |string, maximum size 10|The shipment method of the invoice.            |
|salesperson            |string, maximum size 20|The salesperson code for the invoice.          |
|lastModifiedDateTime   |datetime   |The last datetime the sales invoice was modified. Read-Only.|
|billToName             |string, maximum length 100   |The name of the customer to bill.|
|billToCustomerId       |GUID   |Id of the customer to bill|
|billToCustomerNumber   |string, maximum length 20   |Number of the customer to bill.|
|shipToName   |string, maximum size 100   |Name of the customer in ship to address.|
|shipToContact   |string, maximum size 100   |Ship to contact|
|sellingPostalAddress|Microsoft.NAV.postalAddressType| Selling postal address|
|billingPostalAddress|Microsoft.NAV.postalAddressType| Billing postal address|
|shippingPostalAddress|Microsoft.NAV.postalAddressType| Shipping postal adress|


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
      "shipmentMethod": "string",
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
## See also

[Get Sales Invoice](../api/dynamics_salesinvoice_get.md)  
[Create Sales Invoice](../api/dynamics_create_salesinvoice.md)  
[Update Sales Invoice](../api/dynamics_salesinvoice_update.md)  
[Delete Sales Invoice](../api/dynamics_salesinvoice_delete.md)  