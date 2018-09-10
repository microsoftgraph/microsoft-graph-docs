---
title: Create paymentTerms | Microsoft Docs
description: Creates a payment terms object in Dynamics 365 Business Central.
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

# Create paymentTerms
Create a payment terms object in Dynamics 365 Business Central.

## HTTP request
```
POST /financials/companies({id})/paymentTerms
```

## Request headers
|Header|Value|
|---------------|-----------------------------|
|Authorization  |Bearer {token}. Required.    |
|Content-Type   |application/json             |

## Request body
In the request body, supply a JSON representation of a **paymentTerms** object.

## Response
If successful, this method returns ```201 Created``` response code and a **paymentTerms** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/paymentTerms
Content-type: application/json

{
  "code": "7 DAYS",
  "displayName": "Net 7 days",
  "dueDateCalculation": "7D",
  "discountDateCalculation": "",
  "discountPercent": 0,
  "calculateDiscountOnCreditMemos": false
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "7 DAYS",
  "displayName": "Net 7 days",
  "dueDateCalculation": "7D",
  "discountDateCalculation": "",
  "discountPercent": 0,
  "calculateDiscountOnCreditMemos": false,
  "lastModifiedDateTime": "2017-03-03T02:14:32Z"
}

```



## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Payment Terms](../resources/dynamics_paymentterms.md)  
[Get Payment Terms](../api/dynamics_paymentterms_get.md)  
[Update Payment Terms](../api/dynamics_paymentterms_update.md)  
[Delete Payment Terms](../api/dynamics_paymentterms_delete.md)  