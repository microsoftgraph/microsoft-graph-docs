---
title: Get salesQuoteLines | Microsoft Docs
description: Gets a sales quote line object in Dynamics 365 Business Central.
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

# Get salesQuoteLines
Retrieve the properties and relationships of a sales quote line object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/salesQuotes({id})/salesQuoteLines
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **salesQuoteLines** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/salesQuotes({id})/salesQuoteLines
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "documentId": "id-value",
  "sequence": 10000,
  "itemId": "id-value",
  "accountId": "id-value",
  "lineType": "Item",
  "description": "ATHENS Desk",
  "unitOfMeasureId": "id-value",
  "unitPrice": 6165,
  "quantity": 1,
  "discountAmount": 0,
  "discountPercent": 0,
  "discountAppliedBeforeTax": false,
  "amountExcludingTax": 6165,
  "taxCode": "VAT10",
  "taxPercent": 10,
  "totalTaxAmount": 0,
  "amountIncludingTax": 6165,
  "netAmount": 6165,
  "netTaxAmount": 0,
  "netAmountIncludingTax": 6165
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Sales Quote Line](../resources/dynamics_salesquoteline.md)  
[Create Sales Quote Line](../api/dynamics_create_salesquoteline.md)  
[Update Sales Quote Line](../api/dynamics_salesquoteline_update.md)  
[Delete Sales Quote Line](../api/dynamics_salesquoteline_delete.md)  
