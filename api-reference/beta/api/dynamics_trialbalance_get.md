---
title: Get trialBalance | Microsoft Docs
description: Gets a trial balance object in Dynamics 365 Business Central.
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

# Get trialBalance
Retrieve the properties and relationships of a trial balance report object for Dynamics 365 Business Central.

## HTTP request
```
GET /financials/companies({id})/trialBalance
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **trialBalance** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/trialBalance?$orderby number&$filter=dateFilter ge 2019-01-01 and dateFilter le 2019-12-31
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "number": "1110",
  "accountId": "id-value",
  "accountType": "Posting",
  "display": "Accounts Receivable",
  "totalDebit": "479.00",
  "totalCredit": "0.00",
  "balanceAtDateDebit": "72,893.84",
  "balanceAtDateCredit": "0.00",
  "dateFilter": "2019-12-31"    
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Trial Balance](../resources/dynamics_trialbalance.md)  
