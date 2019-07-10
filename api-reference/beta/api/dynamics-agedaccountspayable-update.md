---
title: "Update agedaccountspayable"
description: "Update the properties of agedaccountspayable object."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Update agedaccountspayable

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of agedaccountspayable object.

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
PATCH /financials/companies/{id}/agedAccountsPayable/{vendorId}
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
|name|String||
|period1Amount|Decimal||
|period2Amount|Decimal||
|period3Amount|Decimal||
|periodLengthFilter|String||
|vendorNumber|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [agedAccountsPayable](../resources/dynamics-agedaccountspayable.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_agedaccountspayable"
}-->

```http
PATCH https://graph.microsoft.com/beta/financials/companies/{id}/agedAccountsPayable/{vendorId}
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
HTTP/1.1 200 OK
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
  "description": "Update agedaccountspayable",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->