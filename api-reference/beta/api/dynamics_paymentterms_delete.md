---
title: Delete paymentTerms | Microsoft Docs
description: Deletes a payment term object in Dynamics 365 Business Central.
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

# Delete paymentTerms
Delete a payment terms object from Dynamics 365 Business Central.

## HTTP request
```
DELETE /financials/companies({id})/paymentTerms({id})
```

## Request headers

|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **paymentTerms**, the **paymentTerms** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://graph.microsoft.com/beta/financials/companies({id})/paymentTerms({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Payment Terms](../resources/dynamics_paymentterms.md)  
[Get Payment Terms](../api/dynamics_paymentterms_get.md)  
[Create Payment Terms](../api/dynamics_create_paymentterms.md)  
[Update Payment Terms](../api/dynamics_paymentterms_update.md)  