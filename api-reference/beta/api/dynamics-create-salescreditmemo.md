---
title: Create salesCreditMemos | Microsoft Docs
description: Creates a sales credit memo object in Dynamics 365 Business Central.
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

# Create salesCreditMemos
Create a sales credit memo object in [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request

```
POST /businesscentral/companies({id})/salesCreditMemos
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required.    |
|Content-Type  |application/json    |

## Request body
In the request body, supply a JSON representation of a **salesCreditMemos** object.

## Response
If successful, this method returns ```201 Created``` response code and a **salesCreditMemos** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesCreditMemos
Content-type: application/json

{
  "id": "id-value",
  "number": "1009",
  "creditMemoDate": "2015-12-31",
  "customerNumber": "GL00000008",
  "currencyCode": "GBP",
  "paymentTermsId": "3bb5b4b6-ea4c-43ca-ba1c-3b69e29a6668"
}
```
## See also

[Sales Credit Memo](../resources/dynamics_salescreditmemo.md)  
[Get Sales Credit Memo](../api/dynamics_salescreditmemo_get.md)  
[Update Sales Credit Memo](../api/dynamics_salescreditmemo_update.md)  
[Delete Sales Credit Memo](../api/dynamics_salescreditmemo_delete.md)  