---
title: Get paymentTerms | Microsoft Docs
description: Gets a payment term object in Dynamics 365 Business Central.
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

# Get paymentTerms
Retrieve the properties and relationships of a payment terms object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/paymentTerms({id})
```

## Request headers
|Header         |Value                     |
|---------------|--------------------------|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **paymentTerms** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/paymentTerms({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "code": "7 DAYS",
  "displayName": "Net 7 days",
  "dueDateCalculation": "7D",
  "discountDateCalculation": "",
  "discountPercent": 0,
  "calculateDiscountOnCreditMemos": false,
  "lastModifiedDateTime": "2017-03-15T02:20:55.203Z"
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Payment Terms](../resources/dynamics_paymentterms.md)  
[Create Payment Terms](../api/dynamics_create_paymentterms.md)  
[Update Payment Terms](../api/dynamics_paymentterms_update.md)  
[Delete Payment Terms](../api/dynamics_paymentterms_delete.md)  