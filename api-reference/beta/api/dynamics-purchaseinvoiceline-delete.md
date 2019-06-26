---
title: Delete purchaseInvoiceLines | Microsoft Docs
description: Deletes a purchase invoice line object in Dynamics 365 Business Central.
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

# Delete purchaseInvoiceLines
Delete a purchase invoice line object from [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request
```
DELETE /businesscentral/companies({id})/purchaseInvoices({id})/purchaseInvoiceLines({purchaseInvoiceLineId})
```

## Request headers

|Header         |Value                      |
|---------------|---------------------------|
|Authorization  |Bearer {token}. Required.  |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **purchaseInvoiceLines**, the **purchaseInvoiceLines** will not be deleted.  |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/purchaseInvoices({id})/purchaseInvoiceLines({purchaseInvoiceLineId})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also

[Purchase Invoice Line](../resources/dynamics_purchaseinvoiceline.md)  
[Get Purchase Invoice Line](../api/dynamics_purchaseinvoiceline_get.md)  
[Create Purchase Invoice Line](../api/dynamics_create_purchaseinvoiceline.md)  
[Update Purchase Invoice Line](../api/dynamics_purchaseinvoiceline_update.md)  