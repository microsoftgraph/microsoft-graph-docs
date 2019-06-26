---
title: Create salesInvoices | Microsoft Docs
description: Create a sales invoice object in Dynamics 365 Business Central. 
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

# Create salesInvoices
Create a sales invoice object in [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
POST /businesscentral/companies({id})/salesInvoices
```

## Request headers

|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |
|Content-Type   |application/json          |

## Request body
In the request body, supply a JSON representation of a **salesInvoices** object.

## Response
If successful, this method returns ```201 Created``` response code and a **salesInvoices** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesInvoices
Content-type: application/json

{
  "id": "id-value",
  "number": "1009",
  "invoiceDate": "2015-12-31",
  "customerNumber": "GL00000008",
  "currencyCode": "GBP",
  "paymentTermsId": "3bb5b4b6-ea4c-43ca-ba1c-3b69e29a6668"
}
```

## See also

[Sales Invoice](../resources/dynamics_salesinvoice.md)  
[Get Sales Invoice](../api/dynamics_salesinvoice_get.md)  
[Update Sales Invoice](../api/dynamics_salesinvoice_update.md)  
[Delete Sales Invoice](../api/dynamics_salesinvoice_delete.md)  