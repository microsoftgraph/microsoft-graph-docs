---
title: Delete taxGroups | Microsoft Docs
description: Deletes a tax group object in Dynamics 365 Business Central. 
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

# Delete taxGroups
Delete a tax group object from Dynamics 365 Business Central.

## HTTP request
```
DELETE /financials/companies({id})/taxGroups({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **taxGroups**, the **taxGroups** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204,No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://graph.microsoft.com/beta/financials/companies({id})/taxGroups({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See Also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Tax Groups](../resources/dynamics_taxgroups.md)  
[Get Tax Groups](../api/dynamics_taxgroups_get.md)  
[Create Tax Groups](../api/dynamics_create_taxgroups.md)  
[Update Tax Groups](../api/dynamics_taxgroups_update.md)  