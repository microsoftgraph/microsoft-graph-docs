---
title: "Create paymentTerm"
description: "Use this API to create a new paymentTerm."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Create paymentTerm

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new paymentTerm.

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
POST /financials/companies/{id}/paymentTerms
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [paymentTerm](../resources/paymentterm.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [paymentTerm](../resources/dynamics-paymentterm.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_paymentterm_from_company"
}-->

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/paymentTerms
Content-type: application/json

{
  "code": "code-value",
  "displayName": "displayName-value",
  "dueDateCalculation": "dueDateCalculation-value",
  "discountDateCalculation": "discountDateCalculation-value",
  "discountPercent": 99
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.paymentTerm"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "code-value",
  "displayName": "displayName-value",
  "dueDateCalculation": "dueDateCalculation-value",
  "discountDateCalculation": "discountDateCalculation-value",
  "discountPercent": 99
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create paymentTerm",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->