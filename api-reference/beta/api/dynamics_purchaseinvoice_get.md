---
title: Get purchaseInvoices | Microsoft Docs
description: Gets a purchase invoice object in Dynamics 365 Business Central.
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

# Get purchaseInvoices
Retrieve the properties and relationships of a purchase invoice object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/purchaseInvoices({id})
```

## Request headers
|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **purchaseInvoices** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/purchaseInvoices({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "number": "1009",
  "invoiceDate": "2015-12-31",
  "dueDate": "2016-01-31",
  "vendorInvoiceNumber": "",
  "vendorId": "vendorId-value",
  "vendorNumber": "GL00000008",
  "vendorName": "GL00000008",
  "buyFromAddress": {
    "street": "",
    "city": "",
    "state": "",
    "countryLetterCode": "",
    "postalCode": ""
  },
  "currencyCode": "GBP",
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
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Purchase Invoice](../resources/dynamics_purchaseinvoice.md)  
[Create Purchase Invoice](../api/dynamics_create_purchaseinvoice.md)  
[Update Purchase Invoice](../api/dynamics_purchaseinvoice_update.md)  
[Delete Purchase Invoice](../api/dynamics_purchaseinvoice_delete.md)  
