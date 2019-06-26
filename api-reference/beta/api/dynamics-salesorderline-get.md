---
title: Get salesOrderLines | Microsoft Docs
description: Gets a sales order line object in Dynamics 365 Business Central.
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

# Get salesOrderLines
Retrieve the properties and relationships of a sales order line object for [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## Prerequisites

## HTTP request

```
GET /businesscentral/companies({id})/salesOrders({id})/salesOrderLines({salesOrderLineId})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **salesOrderLines** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesOrders({id})/salesOrderLines({salesOrderLineId})
```

**Response**

Here is an example of the response. 

> [!NOTE]  
>   The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "documentId": "id-value",
  "sequence": 10000,
  "itemId": "id-value",
  "accountId": "id-value",
  "lineType": "Item",
  "lineDetails": {
    "number": "GL000091",
    "displayName": "GL000091",
    "description": null
  },
  "description": "GL00000091",
  "unitOfMeasureId": "id-value",
  "unitOfMeasure": {
    "code": "BOX",
    "displayName": "Box",
    "symbol": null,
    "unitConversion": null
  },
  "quantity": 96,
  "unitPrice": 71.1,
  "discountAmount": 0,
  "discountPercent": 0,
  "discountAppliedBeforeTax": false,
  "amountExcludingTax": 6825.6,
  "taxCode": "VAT10",
  "taxPercent": 10,
  "totalTaxAmount": 682.56,
  "amountIncludingTax": 7508.16,
  "invoiceDiscountAllocation": 0,
  "netAmount": 6825.6,
  "netTaxAmount": 682.56,
  "netAmountIncludingTax": 7508.16,
  "shipmentDate": "2019-01-24",
  "shippedQuantity": 0,
  "invoicedQuantity": 0,
  "invoiceQuantity": 96,
  "shipQuantity": 96
}
```

## See also

[Sales Order Line](../resources/dynamics_salesorderline.md)  
[Create Sales Order Line](../api/dynamics_create_salesorderline.md)  
[Update Sales Order Line](../api/dynamics_salesorderline_update.md)  
[Delete Sales Order Line](../api/dynamics_salesorderline_delete.md)  