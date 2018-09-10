---
title: Get customerPayments | Microsoft Docs
description: Gets a customer payment object in Dynamics 365 Business Central.
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

# Get customerPayments
Retrieve the properties and relationships of a customer payment object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/customerPaymentJournals({id})/customerPayments({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **customerPayments** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/customerPaymentJournals({id})/customerPayments({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "journalDisplayName": "GENERAL",
  "lineNumber": 10000,
  "customerId": "customerId-value",
  "customerNumber": "10400",
  "contactId": "string",
  "postingDate": "2015-12-31",
  "documentNumber": "1234",
  "externalDocumentNumber": "",
  "amount": 1500,
  "appliesToInvoiceId": "appliesToInvoiceId-value",
  "appliesToInvoiceNumber": "100000",
  "description": "",
  "comment": "",
  "lastModifiedDateTime": "2017-03-17T19:02:22.043Z"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Customer Payments](../resources/dynamics_customerpayment.md)  
[Post Customer Payments](dynamics_create_customerpayment.md)  
[Patch Customer Payments](dynamics_customerpayment_update.md)  
[Delete Customer Payments](dynamics_customerpayment_delete.md)  
