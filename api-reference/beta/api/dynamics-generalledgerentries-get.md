---
title: Get generalLedgerEntries 
description: Gets a general ledger entry object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Get generalLedgerEntries

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a general ledger entry object for Dynamics 365 Business Central.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type |Permissions (from least to most privileged)|
|:---------------|:------------------------------------------|
|Delegated (work or school account)|Financials.ReadWrite.All |
|Delegated (personal Microsoft account|Not supported.|
|Application|Financials.ReadWrite.All|


## HTTP request
```
GET /financials/companies/{id}/generalLedgerEntries/{id}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header       |Value             |
|-------------|------------------|
|Authorization|Bearer. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a **generalLedgerEntries** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies/{id}/generalLedgerEntries/{id}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

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



