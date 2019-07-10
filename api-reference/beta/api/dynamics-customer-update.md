---
title: "Update customer"
description: "Update the properties of customer object."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Update customer

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of customer object.

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
PATCH /financials/companies/{id}/customers/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|address|postalAddressType||
|blocked|String||
|currencyCode|String||
|currencyId|Guid||
|displayName|String||
|email|String||
|lastModifiedDateTime|DateTimeOffset||
|number|String||
|paymentMethodId|Guid||
|paymentTermsId|Guid||
|phoneNumber|String||
|shipmentMethodId|Guid||
|taxAreaDisplayName|String||
|taxAreaId|Guid||
|taxLiable|Boolean||
|taxRegistrationNumber|String||
|type|String||
|website|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [customer](../resources/dynamics-customer.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_customer"
}-->

```http
PATCH https://graph.microsoft.com/beta/financials/companies/{id}/customers/{id}
Content-type: application/json

{
  "number": "number-value",
  "displayName": "displayName-value",
  "type": "type-value",
  "address": {
    "street": "street-value",
    "city": "city-value",
    "state": "state-value",
    "countryLetterCode": "countryLetterCode-value",
    "postalCode": "postalCode-value"
  },
  "phoneNumber": "phoneNumber-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customer"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "number": "number-value",
  "displayName": "displayName-value",
  "type": "type-value",
  "address": {
    "street": "street-value",
    "city": "city-value",
    "state": "state-value",
    "countryLetterCode": "countryLetterCode-value",
    "postalCode": "postalCode-value"
  },
  "phoneNumber": "phoneNumber-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update customer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->