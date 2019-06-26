---
title: Update salesQuoteLines | Microsoft Docs
description: Updates a sales quote line in Dynamics 365 Business Central.
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

# Update salesQuoteLines
Update the properties of a sales quote line object for [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
PATCH /businesscentral/companies({id})/salesQuotes({id})/salesQuoteLines({salesQouteLineId})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json|
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **salesQuoteLines**, the **salesQuoteLines** will not be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated **salesQuoteLines** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
PATCH https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesQuotes({id})/salesQuoteLines({salesQuoteLineId})
Content-type: application/json

{
  "description": "someText"
}
```

**Response**

Here is an example of the response. 

> [!NOTE]  
>   The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "documentId": "id-value",
  "sequence": 10000,
  "itemId": "id-value",
  "accountId": "id-value",
  "lineType": "Item",
  "lineDetails": {
    "number": "1896-S",
    "displayName": "ATHENS Desk",
    "description": null
  },
  "description": "someText",
  "unitOfMeasure": {
    "code": "BOX",
    "displayName": "Box",
    "symbol": null,
    "unitConversion": null
  },
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

[Sales Quote Line](../resources/dynamics_salesquoteline.md)  
[Get Sales Quote Line](../api/dynamics_salesquoteline_get.md)  
[Create Sales Quote Line](../api/dynamics_create_salesquoteline.md)  
[Delete Sales Quote Line](../api/dynamics_salesquoteline_delete.md)  