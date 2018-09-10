---
title: Delete customerPaymentJournals | Microsoft Docs
description: Deletes a customer payment journal in Dynamics 365 Business Central.
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

# Delete customerPaymentJournals
Delete a customer payment journal object from Dynamics 365 Business Central.

## HTTP request
```
DELETE /financials/companies({id})/customerPaymentJournals({id})
```

## Request headers
|Header       |Value                     |
|-------------|--------------------------|
|Authorization|Bearer {token}. Required. |
|If-Match     |Required. When this request header is included and the eTag provided does not match the current tag on the **customerPaymentJournals**, the **customerPaymentJournals** will not be updated. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://graph.microsoft.com/beta/financials/companies({id})/customerPaymentJournals({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Customer Payment Journal](../resources/dynamics_customerpaymentsjournal.md)  
[Get Customer Payment Journal](dynamics_customerpaymentsjournal_get.md)  
[Post Customer Payment Journal](dynamics_create_customerpaymentsjournal.md)  
[Patch Customer Payment Journal](dynamics_customerpaymentsjournal_update.md)  
