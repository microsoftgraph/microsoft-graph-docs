---
title: Get journals | Microsoft Docs
description: Gets a journal object in Dynamics 365 Business Central.
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

# Get journals
Retrieve the properties and relationships of a journal object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/journals({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **journals** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/journals({id})
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
[Journal](../resources/dynamics_journal.md)  
[Create Journal](../api/dynamics_create_journal.md)  
[Update Journal](../api/dynamics_journal_update.md)  
[Delete Journal](../api/dynamics_journal_delete.md)  
