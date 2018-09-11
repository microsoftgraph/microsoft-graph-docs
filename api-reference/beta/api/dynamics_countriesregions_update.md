---
title: Update countriesRegions | Microsoft Docs
description: Updates a countries/regions object in Dynamics 365 Business Central.
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

# Update countriesRegions
Update the properties of a country/region object for Dynamics 365 Business Central.

## HTTP request
```
PATCH /financials/companies({id})/countriesRegions({id})
```

## Request headers
|Header|Value|
|------|-----|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json|
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **countriesRegions**, the **countriesRegions** will not be updated. |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated **countriesRegions** object in the response body.

## Example

**Request**

Here is an example of the request.

```json
PATCH https://graph.microsoft.com/beta/financials/companies({id})/countriesRegions({id})
Content-type: application/json

{
  "displayName": "United States of America"
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
  "code": "US",
  "displayName": "United States of America",
  "addressFormat": "City+County+Post Code",
  "lastModifiedDateTime": "2017-03-16T15:22:31.753Z"
}
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Countries Regions](../resources/dynamics_countriesregions.md)  
[Get Countries Regions](dynamics_countriesregions_get.md)  
[Post Countries Regions](dynamics_create_countriesregions.md)  
[Delete Countries Regions](dynamics_countriesregions_delete.md)  