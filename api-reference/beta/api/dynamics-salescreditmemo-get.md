---
title: Get salesCreditMemos | Microsoft Docs
description: Gets a sales credit memo object in Dynamics 365 Business Central.
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

# Get salesCreditMemos
Retrieve the properties and relationships of a sales credit memo object for [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
GET /businesscentral/companies({id})/salesCreditMemos({id})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **salesCreditMemos** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesCreditMemos({id})
```

**Response**

Here is an example of the response. 

> [!NOTE]  
>   The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "number": "1009",
  "creditMemoDate": "2015-12-31",
  "dueDate": "2016-01-31",
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
  "paymentTermsId": "3bb5b4b6-ea4c-43ca-ba1c-3b69e29a6668",
  "salesperson": "",
  "pricesIncludeTax": false,
  "discountAmount": 0,
  "discountAppliedBeforeTax": true,
  "totalAmountExcludingTax": 6825.6,
  "totalTaxAmount": 682.56,
  "totalAmountIncludingTax": 7508.16,
  "status": "Draft",
  "lastModifiedDateTime": "2017-03-17T19:02:22.043Z",
  "invoiceId": "invoiceid-value",
  "invoiceNumber": "100009"
}
```

## See also

[Sales Credit Memo](../resources/dynamics_salescreditmemo.md)  
[Create Sales Credit Memo](../api/dynamics_create_salescreditmemo.md)  
[Update Sales Credit Memo](../api/dynamics_salescreditmemo_update.md)  
[Delete Sales Credit Memo](../api/dynamics_salescreditmemo_delete.md)  