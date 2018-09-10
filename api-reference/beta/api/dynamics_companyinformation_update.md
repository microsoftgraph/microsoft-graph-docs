---
title: Update companyInformation | Microsoft Docs
description: Updates a company information object in Dynamics 365 Business Central.
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

# Update companyInformation
Update the properties of a company information object for Dynamics 365 Business Central.


## HTTP request
```
PATCH /financials/companies({id})/companyInformation({id})
```

## Request headers
|Header        |Value                    |
|--------------|-------------------------|
|Authorization |Bearer {token}. Required.|
|Content-Type  |application/json         |
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **companyInformation**, the **companyInformation** will not be updated.  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response
If successful, this method returns a ```200 OK``` response code and an updated an **companyInformation** object in the response body.

## Example

**Request**

Here is an example of the request.
```json
PATCH https://graph.microsoft.com/beta/financials/companies({id})/companyInformation({id})
Content-type: application/json

{
  "displayName": "CRONUS USA, LTD.",
  "website": "www.cronuscorp.net"
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
  "displayName": "CRONUS USA, LTD.",
  "address": {
    "street": "7122 South Ashford Street\r\nWestminster",
    "city": "Atlanta",
    "state": "GA",
    "countryLetterCode": "US",
    "postalCode": "31772"
  },
  "phoneNumber": "+1 425 555 0100",
  "faxNumber": "+1 425 555 0101",
  "email": "",
  "website": "www.cronuscorp.net",
  "taxRegistrationNumber": "",
  "currencyCode": "USD",
  "currentFiscalYearStartDate": "2018-01-01",
  "industry": "",
  "picture@odata.mediaReadLink": "https://api.financials.dynamics.com/v1.0/api/beta/companies({id})/companyInformation({id})/picture",
  "lastModifiedDateTime": "2017-03-16T14:57:19.497Z"
  }
```


## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[Companies](../resources/dynamics_companies.md)  
[Company Information](../resources/dynamics_companyinformation.md)  
[Get Company Information](dynamics_companyinformation_get.md)  