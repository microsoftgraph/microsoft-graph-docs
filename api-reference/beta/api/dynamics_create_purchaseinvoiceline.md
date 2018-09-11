---
title: Create purchaseInvoiceLines | Microsoft Docs
description: Creates a purchase invoice line object in Dynamics 365 Business Central.
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

# Create purchaseInvoiceLines
Create a purchase invoice line object in Dynamics 365 Business Central.

## HTTP request

```
POST /financials/companies({id})/purchaseInvoices({id})/purchaseInvoiceLines
```

## Request headers

|Header         |Value                        |
|---------------|-----------------------------|
|Authorization  |Bearer {token}. Required.    |
|Content-Type   |application/json             |

## Request body
In the request body, supply a JSON representation of a **purchaseInvoiceLines** object.

## Response
If successful, this method returns ```201 Created``` response code and a **purchaseInvoiceLines** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/purchaseInvoices({id})/purchaseInvoiceLines
Content-type: application/json

{
"itemId": "id-value",
"lineType": "Item",
"quantity": 9
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Purchase Invoice Line](../resources/dynamics_purchaseinvoiceline.md)  
[Get Purchase Invoice Line](../api/dynamics_purchaseinvoiceline_get.md)  
[Update Purchase Invoice Line](../api/dynamics_purchaseinvoiceline_update.md)  
[Delete Purchase Invoice Line](../api/dynamics_purchaseinvoiceline_delete.md)  
