---
title: Get items | Microsoft Docs
description: Gets an item object in Dynamics 365 Business Central.
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

# Get items
Retrieve the properties and relationships of an item object for Dynamics 365 Business Central.


## HTTP request

```
GET /financials/companies({id})/items({id})
```

## Request headers
|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and an **items** object in the response body.

## Example
**Request**

Here is an example of the request.
```json
GET https://graph.microsoft.com/beta/financials/companies({id})/items({id})
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
  "id": "id-value",
  "number": "1896-S",
  "displayName": "ATHENS Desk",
  "type": "Inventory",
  "blocked": false,
  "baseUnitOfMeasureId": "id-value",
  "gtin": "",
  "itemCategoryId": "id-value"
  "inventory": 0,
  "unitPrice": 1000.8,
  "priceIncludesTax": false,
  "unitCost": 780.7,
  "taxGroupId": "id-value",
  "taxGroupCode": "FURNITURE",
  "lastModifiedDateTime": "2017-03-07T00:35:30.073Z"
}

```
## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Item](../resources/dynamics_item.md)  
[Post Item](../api/dynamics_create_item.md)  
[Patch Item](../api/dynamics_item_update.md)  
[Delete Item](../api/dynamics_item_delete.md)  
