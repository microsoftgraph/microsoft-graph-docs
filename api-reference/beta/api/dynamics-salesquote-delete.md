---
title: Delete salesQuotes | Microsoft Docs
description: Deletes a sales quote object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-financials
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 04/01/2019
ms.author: solsen
---

# Delete salesQuotes
Delete a salesQuote from [!INCLUDE[d365fin_long_md](../../includes/d365fin_long_md.md)].

## HTTP request
```
DELETE /businesscentral/companies({id})/salesQuotes({id})
```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |
|If-Match      |Required. When this request header is included and the eTag provided does not match the current tag on the **salesQuotes**, the **salesQuotes** will not be updated. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns ```204 No Content``` response code. It does not return anything in the response body.

## Example

**Request**

Here is an example of the request.

```json
DELETE https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesQuotes({id})
```

**Response** 

Here is an example of the response. 

```json
HTTP/1.1 204 No Content
```

## See also

[Sales Quote](../resources/dynamics_salesquote.md)  
[Get Sales Quote](../api/dynamics_salesquote_get.md)  
[Create Sales Quote](../api/dynamics_create_salesquote.md)  
[Update Sales Quote](../api/dynamics_salesquote_update.md)  