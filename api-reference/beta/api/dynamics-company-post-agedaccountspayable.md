---
title: "Create agedAccountsPayable"
description: "Use this API to create a new agedAccountsPayable."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Create agedAccountsPayable

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new agedAccountsPayable.

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
POST /financials/companies/{id}/agedAccountsPayable
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [agedAccountsPayable](../resources/dynamics-agedaccountspayable.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [agedAccountsPayable](../resources/dynamics-agedaccountspayable.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_agedaccountspayable_from_company"
}-->

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/agedAccountsPayable
Content-type: application/json

{
  "vendorNumber": "vendorNumber-value",
  "name": "name-value",
  "currencyCode": "currencyCode-value",
  "balanceDue": 99,
  "currentAmount": 99
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agedAccountsPayable"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "vendorId": "vendorId-value",
  "vendorNumber": "vendorNumber-value",
  "name": "name-value",
  "currencyCode": "currencyCode-value",
  "balanceDue": 99,
  "currentAmount": 99
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create agedAccountsPayable",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->