---
title: Get shipmentMethods | Microsoft Docs
description: Gets a shipment method object in Dynamics 365 Business Central. 
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

# Get shipmentMethods
Retrieve the properties and relationships of a shipment method object for Dynamics 365 Business Central.

## HTTP request

```
GET /financials/companies({id})/shipmentMethods({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a **shipmentMethods** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/shipmentMethods({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "code": "PICKUP",
  "displayName": "Pickup at Location",
  "lastModifiedDateTime": "2017-03-15T02:20:57.09Z"
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Shipment Methods](../resources/dynamics_shipmentmethods.md)  
[Create Shipment Methods](../api/dynamics_create_shipmentmethods.md)  
[Update Shipment Methods](../api/dynamics_shipmentmethods_update.md)  
[Delete Shipment Methods](../api/dynamics_shipmentmethods_delete.md)  