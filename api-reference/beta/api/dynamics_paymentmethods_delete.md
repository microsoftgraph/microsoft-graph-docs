---
title: Delete paymentMethods | Microsoft Docs
description: Deletes a payment method object in Dynamics 365 Business Central.
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

# Delete paymentMethods
Delete a payment method object from Dynamics 365 Business Central.

## HTTP request
```
DELETE /financials/companies({id})/paymentMethods({id})
```

## Request headers

|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |
|If-Match       |Required. When this request header is included and the eTag provided does not match the current tag on the **paymentMethods**, the **paymentMethods** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://graph.microsoft.com/beta/financials/companies({id})/paymentMethods({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Payment Methods](../resources/dynamics_paymentmethods.md)  
[Get Payment Methods](../api/dynamics_paymentmethods_get.md)  
[Create Payment Methods](../api/dynamics_create_paymentmethods.md)      
[Update Payment Methods](../api/dynamics_paymentmethods_update.md)  
