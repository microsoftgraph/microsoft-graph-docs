---
title: Create taxAreas | Microsoft Docs
description: Creates a tax area object in Dynamics for Financials. 
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

# Create taxAreas
Creates a tax area object in Dynamics 365 Business Central.

## HTTP request

```
POST /financials/companies({id})/taxAreas({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required.    |
|Content-Type  |application/json    |

## Request body
In the request body, supply a JSON representation of a **taxAreas** object.

## Response
If successful, this method returns ```201 Created``` response code and a **taxAreas** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/taxAreas
Content-type: application/json

```json
{
  "code": "44442001T"
}
```

**Response**

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "44442001T",
  "displayName": "tax area",
  "taxType": "Sales Tax",
  "lastModifiedDateTime": "2017-05-17T11:30:01.313Z"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Tax Area](../resources/dynamics_taxarea.md)  
[Get Tax Area](../api/dynamics_taxarea_get.md)  
[Update Tax Area](../api/dynamics_taxarea_update.md)  
[Delete Tax Area](../api/dynamics_taxarea_delete.md)  
