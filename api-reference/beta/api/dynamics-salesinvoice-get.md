---
title: Get salesInvoices | Microsoft Docs
description: Gets a sales invoice object in Dynamics 365 Business Central. 
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

# Get salesInvoices
Retrieve the properties and relationships of a sales object for [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
GET /businesscentral/companies({id})/salesInvoices({id})
```

## Request headers

|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **salesInvoices** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesInvoices({id})
```
To get more data for a salesInvoice, use expand:

``` .../salesInvoices({id})?$expand=salesInvoiceLines,customer```

**Response**

Here is an example of the response. 

> [!NOTE]  
>   The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "number": "1009",
  "invoiceDate": "2015-12-31",
  "dueDate": "2016-01-31",
  "customerPurchaseOrderReference": "",
  "customerId": "customerId-value",
  "contactId": "",
  "customerNumber": "GL00000008",
  "customerName": "GL00000008",
  "billingPostalAddress": {
    "street": "",
    "city": "",
    "state": "",
    "countryLetterCode": "",
    "postalCode": ""
  },
  "currencyId": "currencyId-value",
  "currencyCode": "GBP",
  "orderId": "id-value",
  "orderNumber": "",
  "paymentTermsId": "3bb5b4b6-ea4c-43ca-ba1c-3b69e29a6668",
  "shipmentMethodId": "shipmentMethodId-value",
  "shipmentMethod": "",
  "salesperson": "",
  "pricesIncludeTax": false,
  "discountAmount": 0,
  "discountAppliedBeforeTax": true,
  "totalAmountExcludingTax": 6825.6,
  "totalTaxAmount": 682.56,
  "totalAmountIncludingTax": 7508.16,
  "status": "Draft",
  "lastModifiedDateTime": "2017-03-17T19:02:22.043Z"
}
```

## See also

[Sales Invoice](../resources/dynamics_salesinvoice.md)  
[Create Sales Invoice](../api/dynamics_create_salesinvoice.md)  
[Update Sales Invoice](../api/dynamics_salesinvoice_update.md)  
[Delete Sales Invoice](../api/dynamics_salesinvoice_delete.md)  