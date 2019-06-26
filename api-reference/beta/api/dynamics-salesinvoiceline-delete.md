---
title: Delete salesInvoiceLines | Microsoft Docs
description: Deletes a sales invoice line object in Dynamics 365 Business Central.
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

# Delete salesInvoiceLines
Delete a sales invoice line object from [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request
```
DELETE /businesscentral/companies({id})/salesInvoices({id})/salesInvoiceLines({salesOrderLineId})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **salesInvoiceLines**, the **salesInvoiceLines** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesInvoices({id})/salesInvoiceLines({salesOrderLineId})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also

[Sales Invoice Line](../resources/dynamics_salesinvoiceline.md)  
[Get Sales Invoice Line](../api/dynamics_salesinvoiceline_get.md)  
[Create Sales Invoice Line](../api/dynamics_create_salesinvoiceline.md)  
[Update Sales Invoice Line](../api/dynamics_salesinvoiceline_update.md)  