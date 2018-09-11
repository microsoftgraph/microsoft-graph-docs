---
title: Update salesOrders | Microsoft Docs
description: Updates a sales order object in Dynamics 365 Business Central.
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

# Update salesOrders
Update the properties of a sales orders object for Dynamics 365 Business Central.

## HTTP request

```
PATCH /financials/companies({id})/salesOrders({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json|
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **salesOrders**, the **salesOrders** will not be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated **salesOrders** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
PATCH https://graph.microsoft.com/beta/financials/companies({id})/salesOrders({id})
Content-type: application/json

{
  "externalDocumentNumber": "ORD10523"
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "number": "1006",
  "externalDocumentNumber": "ORD10523",
  "orderDate": "2019-01-24",
  "customerId": "customerId-value",
  "contactId": "",
  "customerNumber": "GL000090",
  "customerName": "GL000090",
  "billingPostalAddress": {
    "street": "",
    "city": "",
    "state": "",
    "countryLetterCode": "",
    "postalCode": ""
  },
  "currencyCode": "GBP",
  "pricesIncludeTax": false,
  "salesperson": "",
  "partialShipping": true,
  "requestedDeliveryDate": "2015-06-01",
  "discountAmount": 0,
  "discountAppliedBeforeTax": true,
  "totalAmountExcludingTax": 6825.6,
  "totalTaxAmount": 682.56,
  "totalAmountIncludingTax": 7508.16,
  "fullyShipped": true,
  "status": "Draft",
  "lastModifiedDateTime": "2017-03-17T19:02:22.043Z"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Sales Order](../resources/dynamics_salesorder.md)  
[Get Sales Order](../api/dynamics_salesorder_get.md)  
[Create Sales Order](../api/dynamics_create_salesorder.md)  
[Delete Sales Order](../api/dynamics_salesorder_delete.md)  
