---
title: Delete irs1099Codes | Microsoft Docs
description: Deletes an IRS 1099 code object in Dynamics 365 Business Central.
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

# Delete irs1099Codes
Delete a irs1099Codes object from Dynamics 365 Business Central.

## HTTP request
```
DELETE /financials/companies({id})/irs1099Codes({id})
```

## Request headers

|Header       |Value                     |
|-------------|--------------------------|
|Authorization|Bearer {token}. Required. |
|If-Match     |Required. When this request header is included and the eTag provided does not match the current tag on the **irs1099Codes**, the **irs1099Codes** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://graph.microsoft.com/beta/financials/companies({id})/irs1099Codes({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[IRS 1099](../resources/dynamics_irs1099.md)  
[Get IRS 1099](../api/dynamics_irs1099_get.md)  
[Post IRS 1099](../api/dynamics_create_irs1099.md)  
[Patch IRS 1099](../api/dynamics_irs1099_update.md)  
