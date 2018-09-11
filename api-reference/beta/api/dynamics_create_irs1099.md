---
title: Create irs1099Codes | Microsoft Docs
description: Creates an IRS 1099 code object in Dynamics 365 Business Central.
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

# Create irs1099Codes
Create an IRS 1099 code object in Dynamics 365 Business Central.

## HTTP request
```
POST /financials/companies({id})/irs1099Codes
```

## Request headers
|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required.|
|Content-Type |application/json         |

## Request body
In the request body, supply a JSON representation of an **irs1099Codes** object.

## Response
If successful, this method returns ```201 Created``` response code and an **irs1099Codes** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies({id})/irs1099Codes
Content-type: application/json

{
  "code": "R-10",
  "displayName": "State income tax withheld",
  "minimumReportable": 0
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
  "code": "R-10",
  "displayName": "State income tax withheld",
  "minimumReportable": 0,
  "lastModifiedDateTime": "0001-01-01T00:00:00Z"
}

```



## See also
[Business Central API Overview](../dynamics-business-central-concept-overview.md)  
[IRS 1099](../resources/dynamics_irs1099.md)  
[Get IRS 1099](../api/dynamics_irs1099_get.md)  
[Patch IRS 1099](../api/dynamics_irs1099_update.md)  
[Delete IRS 1099](../api/dynamics_irs1099_delete.md)  
