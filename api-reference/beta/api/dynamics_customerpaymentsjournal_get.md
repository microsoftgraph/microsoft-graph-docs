---
title: Get customerPaymentJournals | Microsoft Docs
description: Gets a customer payment journal in Dynamics 365 Business Central.
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

# Get customerPaymentJournals
Retrieve the properties and relationships of a customer payment journal object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/customerPaymentJournals({id})
```

## Request headers
|Header       |Value                     |
|-------------|--------------------------|
|Authorization|Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **customerPaymentJournals** object in the response body.

## Example

**Request**

Here is an example of the request.

```json
GET https://graph.microsoft.com/beta/financials/companies({id})/customerPaymentJournals({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
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
