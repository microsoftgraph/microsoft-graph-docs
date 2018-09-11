---
title: Create salesOrders | Microsoft Docs
description: Creates a sales order object in Dynamics 365 Business Central. 
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

# Create salesOrders
Create a sales order object in Dynamics 365 Business Central.

## HTTP request

```
POST /financials/companies({id})/salesOrders
```

## Request headers

|Header         |Value                        |
|---------------|-----------------------------|
|Authorization  |Bearer {token}. Required.    |
|Content-Type   |application/json             |

## Request body
In the request body, supply a JSON representation of a **salesOrders** object.

## Response
If successful, this method returns ```201 Created``` response code and a **salesOrders** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/salesOrders
Content-type: application/json

{
  "id": "id-value",
  "number": "1009",
  "orderDate": "2015-12-31",
  "customerNumber": "GL00000008",
  "currencyCode": "GBP"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Sales Order](../resources/dynamics_salesorder.md)  
[Get Sales Order](../api/dynamics_salesorder_get.md)  
[Update Sales Order](../api/dynamics_salesorder_update.md)  
[Delete Sales Order](../api/dynamics_salesorder_delete.md)  
