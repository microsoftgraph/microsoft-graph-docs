---
title: Create customerPaymentJournals | Microsoft Docs
description: Creates a customer payments journal object in Dynamics 365 Business Central.
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

# Create customerPaymentJournals
Creates a customer payment journal object in Dynamics 365 Business Central.

## HTTP request

```
POST /financials/companies({id})/customerPaymentJournals({id})
```

## Request headers
|Header        |Value                    |
|--------------|-------------------------|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json         |

## Request body
In the request body, supply a JSON representation of **customerPaymentJournals** object.

## Response
If successful, this method returns ```201 Created``` response code and a **customerPaymentJournals** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/customerPaymentJournals
Content-type: application/json

```json
{
  "code": "DEFAULT"
}
```

**Response**

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "DEFAULT",
  "displayName": "Default Journal Batch",
  "lastModifiedDateTime": "2017-05-17T11:30:01.313Z"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Customer Payment Journal](../resources/dynamics_customerpaymentsjournal.md)  
[Get Customer Payment Journal](dynamics_customerpaymentsjournal_get.md)  
[Patch Customer Payment Journal](dynamics_customerpaymentsjournal_update.md)  
[Delete Customer Payment Journal](dynamics_customerpaymentsjournal_delete.md)  
