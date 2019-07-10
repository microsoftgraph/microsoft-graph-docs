---
title: "salesInvoice: cancelAndSend"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# salesInvoice: cancelAndSend

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel and send salesInvoice.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /financials/companies/{id}/salesInvoices/{id}/cancelAndSend
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code. It does not return anything in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "salesinvoice_cancelandsend"
}-->

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/salesInvoices/{id}/cancelAndSend
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->

```http
HTTP/1.1 200 OK
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "salesInvoice: cancelAndSend",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->