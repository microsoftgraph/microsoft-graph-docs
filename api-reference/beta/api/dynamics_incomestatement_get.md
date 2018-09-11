---
title: Get incomeStatement | Microsoft Docs
description: Gets an income statement object in Dynamics 365 Business Central.
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

# Get incomeStatement
Retrieve the properties and relationships of an income statement report object for Dynamics 365 Business Central.

## HTTP request
```
GET /financials/companies({id})/incomeStatement
```

## Request headers
|Header       |Value                     |
|-------------|--------------------------|
|Authorization|Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and an **incomeStatement** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/incomeStatement?$orderby=lineNumber&$filter=dateFilter ge 2019-01-01 and dateFilter le 2020-12-31
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "lineNumber": 30000,
  "display": "Income, Product Sales",
  "netChange": 483040.25,
  "lineType": "detail",
  "indentation": 1,
  "dateFilter": "2016-12-31"     
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Income Statement](../resources/dynamics_incomestatement.md)  
