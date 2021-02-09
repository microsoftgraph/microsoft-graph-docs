---
title: Get trialBalance 
description: Gets a trial balance object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Get trialBalance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a trial balance report object for Dynamics 365 Business Central.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type |Permissions (from least to most privileged)|
|:---------------|:------------------------------------------|
|Delegated (work or school account)|Financials.ReadWrite.All |
|Delegated (personal Microsoft account|Not supported.|
|Application|Financials.ReadWrite.All|

## HTTP request
```
GET /financials/companies/{id}/trialBalance
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a **trialBalance** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies/{id}/trialBalance?$orderby number&$filter=dateFilter ge 2019-01-01 and dateFilter le 2019-12-31
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

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



