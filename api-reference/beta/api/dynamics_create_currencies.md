---
title: Create currencies | Microsoft Docs
description: Creates a currency object in Dynamics 365 Business Central.
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

# Create currencies
Create a currency object in Dynamics 365 Business Central.

## HTTP request
```
POST /financials/companies({id})/currencies
```

## Request headers
|Header         |Value                    |
|---------------|-------------------------|
|Authorization  |Bearer {token}. Required.|
|Content-Type   |application/json         |

## Request body
In the request body, supply a JSON representation of **currencies** object.

## Response
If successful, this method returns ```201 Created``` response code and a **currencies** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/currencies
Content-type: application/json

{
  "code": "US",
  "displayName": "US Dollar",
  "symbol": "$",
  "amountDecimalPlaces": "2:2",
  "amountRoundingPrecision": 0.01
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "US",
  "displayName": "US Dollar",
  "symbol": "$",
  "amountDecimalPlaces": "2:2",
  "amountRoundingPrecision": 0.01,
  "lastModifiedDateTime": "2017-03-22T21:05:09.002Z"
}

```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Currencies](../resources/dynamics_currencies.md)  
[Get Currencies](dynamics_currencies_get.md)  
[Patch Currencies](dynamics_currencies_update.md)  
[Delete Currencies](dynamics_currencies_delete.md)  