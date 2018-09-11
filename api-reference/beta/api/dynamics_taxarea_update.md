---
title: Update taxAreas | Microsoft Docs
description: Updates a tax areas object in Dynamics 365 Business Central. 
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

# Update taxAreas
Update the properties of a tax area object for Dynamics 365 Business Central.

## HTTP request

```
PATCH /financials/companies({id})/taxAreas({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json|
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **taxAreas**, the **taxAreas** will not be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated **taxAreas** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
PATCH https://graph.microsoft.com/beta/financials/companies({id})/taxAreas({id})
Content-type: application/json

{
  "code": "28012001T",
  "displayName": "tax area",
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
  "code": "28012001T",
  "displayName": "tax area",
  "taxType": "Sales Tax",
  "lastModifiedDateTime": "2017-05-17T11:30:01.313Z"
}
```

## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Tax Area](../resources/dynamics_taxarea.md)  
[Create Tax Area](../api/dynamics_create_taxarea.md)  
[Delete Tax Area](../api/dynamics_taxarea_delete.md)  
