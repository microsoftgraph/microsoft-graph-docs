---
title: Get generalLedgerEntries | Microsoft Docs
description: Gets a general ledger entry object in Dynamics 365 Business Central.
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

# Get generalLedgerEntries
Retrieve the properties and relationships of a general ledger entry object for Dynamics 365 Business Central.


## HTTP request
```
GET /financials/companies({id})/generalLedgerEntries({id})
```

## Request headers
|Header       |Value             |
|-------------|------------------|
|Authorization|Bearer. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **generalLedgerEntries** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/generalLedgerEntries({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
    "id": "10700",
    "postingDate": "2017-03-15",
    "documentNumber": "108027",
    "documentType": "Invoice",
    "accountId": "id-value",
    "accountNumber": "7210",
    "description": "Order 106003",
    "debitAmount": 6943.8,
    "creditAmount": 0,
    "lastModifiedDateTime": "2017-03-15T02:20:58.747Z"
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[General Ledger Entries](../resources/dynamics_generalledgerentries.md)  
