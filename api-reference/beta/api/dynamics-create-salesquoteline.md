---
title: Create salesQuoteLines | Microsoft Docs
description: Creates a sales quote line object in Dynamics 365 Business Central.
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

# Create salesQuoteLines
Create a sales quote line object in [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
POST /businesscentral/companies({id})/salesQuotes({id})/salesQuoteLines
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required.    |
|Content-Type  |application/json    |

## Request body
In the request body, supply a JSON representation of a **salesQuoteLines** object.

## Response
If successful, this method returns ```201 Created``` response code and a **salesQuoteLines** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesQuotes({id})/salesQuoteLines
Content-type: application/json

{
"itemId": "id-value",
"lineType": "Item",
"quantity": 9
}
```

## See also

[Sales Quote Line](../resources/dynamics_salesquoteline.md)  
[Get Sales Quote Line](../api/dynamics_salesquoteline_get.md)  
[Update Sales Quote Line](../api/dynamics_salesquoteline_update.md)  
[Delete Sales Quote Line](../api/dynamics_salesquoteline_delete.md)  