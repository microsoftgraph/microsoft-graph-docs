---
title: Update salesCreditMemos | Microsoft Docs
description: Updates a sales credit memo object in Dynamics 365 Business Central. 
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

# Update salesCreditMemos
Update the properties of a sales credit memo object for Dynamics 365 Business Central.

## HTTP request

```
PATCH /financials/companies({id})/salesCreditMemos({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json|
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **salesCreditMemos**, the **salesCreditMemos** will not be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated **salesCreditMemos** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
PATCH https://graph.microsoft.com/beta/financials/companies({id})/salesCreditMemos({id})
Content-type: application/json

{
  "creditMemoDate": "2015-12-31"
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
HTTP/1.1 200 OK
Content-type: application/json

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
  "currencyId" : "currencyId-value",
  "currencyCode": "GBP",
  "paymentTermsId" : "paymentTermsId-value"
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
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Sales Credit Memo](../resources/dynamics_salescreditmemo.md)  
[Get Sales Credit Memo](../api/dynamics_salescreditmemo_get.md)  
[Create Sales Credit Memo](../api/dynamics_create_salescreditmemo.md)  
[Delete Sales Credit Memo](../api/dynamics_salescreditmemo_delete.md)  
