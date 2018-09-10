---
title: Create salesOrderLines | Microsoft Docs
description: Creates a sales order line object in Dynamics 365 Business Central.
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

# Create salesOrderLines
Create a sales order line object in Dynamics 365 Business Central.

## HTTP request

```
POST /financials/companies({id})/salesOrders({id})/salesOrderLines
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required.    |
|Content-Type   |application/json    |

## Request body
In the request body, supply a JSON representation of a **salesOrderLines** object.

## Response
If successful, this method returns ```201 Created``` response code and a **salesOrderLines** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/salesOrders({id})/salesOrderLines
Content-type: application/json

{
"itemId": "id-value",
"lineType": "Item",
"quantity": 9
}
```
## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Sales Order Line](../resources/dynamics_salesorderline.md)  
[Get Sales Order Line](../api/dynamics_salesorderline_get.md)  
[Update Sales Order Line](../api/dynamics_salesorderline_update.md)  
[Delete Sales Order Line](../api/dynamics_salesorderline_delete.md)  