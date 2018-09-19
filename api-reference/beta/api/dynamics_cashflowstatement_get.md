---
title: Get cashFlowStatement 
description: Gets a cash flow statement object in Dynamics 365 Business Central.
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

# Get cashFlowStatement
Retrieve the properties and relationships of a cash flow statement report object for Dynamics 365 Business Central.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../concepts/permissions_reference.md).

|Permission type|Permissions (from least to most privileged)|
|---------------|-------------------------------------|
|Delegated (work or school account)|Financials.ReadWrite.All|
Delegated (personal Microsoft account)|	Not supported.|
Application|Financials.ReadWrite.All|

## HTTP request
```
GET /financials/companies{id}/cashFlowStatement
```
## Optional query parameters
This method supports the [OData Query Parameters](../../../concepts/query_parameters.md) to help customize the response.

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a **cashFlowStatement** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies{id}/cashFlowStatement?$orderby=lineNumber&$filter=dateFilter ge 2019-01-01 and dateFilter le 2020-12-31
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

```json
{
  "lineNumber": 90000,
  "display": "Net Cash Provided by Operating Activities",
  "netChange": 39133.89,
  "lineType": "total",
  "indentation": 1,
  "dateFilter": "2016-12-31"   
}
```
