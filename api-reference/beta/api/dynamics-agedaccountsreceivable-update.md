---
title: "Update agedaccountsreceivable"
description: "Update the properties of agedaccountsreceivable object."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Update agedaccountsreceivable

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of agedaccountsreceivable object.

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
PATCH /financials/companies/{id}/agedAccountsReceivable/{customerId}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|agedAsOfDate|Date||
|balanceDue|Decimal||
|currencyCode|String||
|currentAmount|Decimal||
|customerNumber|String||
|name|String||
|period1Amount|Decimal||
|period2Amount|Decimal||
|period3Amount|Decimal||
|periodLengthFilter|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [agedAccountsReceivable](../resources/dynamics-agedaccountsreceivable.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_agedaccountsreceivable"
}-->

```http
PATCH https://graph.microsoft.com/beta/financials/companies/{id}/agedAccountsReceivable/{customerId}
Content-type: application/json

{
  "customerNumber": "customerNumber-value",
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
  "@odata.type": "microsoft.graph.agedAccountsReceivable"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "customerId": "customerId-value",
  "customerNumber": "customerNumber-value",
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
  "description": "Update agedaccountsreceivable",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->