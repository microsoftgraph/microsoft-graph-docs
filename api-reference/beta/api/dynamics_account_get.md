---
title: Get accounts | Microsoft Docs
description: Gets an account object in Dynamics 365 Business Central.
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

# Get accounts
Retrieve the properties and relationships of an account object for Dynamics 365 Business Central.

## HTTP request
```
GET /financials/companies({id})/accounts({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and an **accounts** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/accounts({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
    "id": "id-value",
    "number": "10700",
    "displayName": "Inventory",
    "category": "Assets",
    "subCategory": "Inventory",
    "blocked": false,
    "lastModifiedDateTime": "2017-03-15T02:20:58.747Z"
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Account](../resources/dynamics_account.md)  
[Get Aged Accounts Payable](dynamics_agedaccountspayable_get.md)  
[Get Aged Accounts Receivable](dynamics_agedaccountsreceivable_get.md)  
