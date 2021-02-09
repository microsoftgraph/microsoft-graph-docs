---
title: Create paymentMethods 
description: Creates a payment method object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: apiPageType
---

# Create paymentMethods

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a payment method object in DDynamics 365 Business Central.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type |Permissions (from least to most privileged)|
|:---------------|:------------------------------------------|
|Delegated (work or school account)|Financials.ReadWrite.All |
|Delegated (personal Microsoft account|Not supported.|
|Application|Financials.ReadWrite.All|

## HTTP request
```
POST /financials/companies/{id}/paymentMethods
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header         |Value                        |
|---------------|-----------------------------|
|Authorization  |Bearer {token}. Required.    |
|Content-Type   |application/json             |

## Request body
In the request body, supply a JSON representation of a **paymentMethods** object.

## Response
If successful, this method returns ```201 Created``` response code and a **paymentMethods** object in the response body.

## Example

**Request**

Here is an example of a request.

```json
POST https://graph.microsoft.com/beta/financials/companies/{id}/paymentMethods
Content-type: application/json

{
  "code": "CHECK",
  "displayName": "Check payment"
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

```json
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "CHECK",
  "displayName": "Check payment",
  "lastModifiedDateTime": "2017-03-22T08:35:48.33Z"
}

```



