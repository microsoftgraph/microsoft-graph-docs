---
title: Delete salesOrderLines | Microsoft Docs
description: Deletes a sales order line object in Dynamics 365 Business Central.
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

# Delete salesOrderLines
Delete a sales order line object from [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request
```
DELETE /businesscentral/companies({id})/salesOrders({id})/salesOrderLines({salesCreditMemoLineId})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **salesOrderLines**, the **salesOrderLines** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesOrders({id})/salesOrderLines({salesOrderLineId})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also

[Sales Order Line](../resources/dynamics_salesorderline.md)  
[Get Sales Order Line](../api/dynamics_salesorderline_get.md)  
[Create Sales Order Line](../api/dynamics_create_salesorderline.md)  
[Update Sales Order Line](../api/dynamics_salesorderline_update.md)  