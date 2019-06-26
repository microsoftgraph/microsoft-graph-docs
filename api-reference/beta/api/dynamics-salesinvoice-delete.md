---
title: Delete salesInvoices | Microsoft Docs
description: Deletes a sales invoice object in Dynamics 365 Business Central. 
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

# Delete salesInvoices
Delete a sales invoice object from [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request
```
DELETE /businesscentral/companies({id})/salesInvoices({id})
```

## Request headers

| Header        | Value                    |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **salesInvoices**, the **salesInvoices** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesInvoices({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also

[Sales Invoice](../resources/dynamics_salesinvoice.md)  
[Get Sales Invoice](../api/dynamics_salesinvoice_get.md)  
[Create Sales Invoice](../api/dynamics_create_salesinvoice.md)  
[Update Sales Invoice](../api/dynamics_salesinvoice_update.md)  