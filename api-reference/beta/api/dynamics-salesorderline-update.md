---
title: "Update salesorderline"
description: "Update the properties of salesorderline object."
localization_priority: Normal
author: henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Update salesorderline

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of salesorderline object.

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
PATCH /financials/companies/{id}/salesOrders/{id}/salesOrderLines/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accountId|Guid||
|amountExcludingTax|Decimal||
|amountIncludingTax|Decimal||
|description|String||
|discountAmount|Decimal||
|discountAppliedBeforeTax|Boolean||
|discountPercent|Decimal||
|documentId|Guid||
|invoiceDiscountAllocation|Decimal||
|invoiceQuantity|Decimal||
|invoicedQuantity|Decimal||
|itemId|Guid||
|lineType|String||
|netAmount|Decimal||
|netAmountIncludingTax|Decimal||
|netTaxAmount|Decimal||
|quantity|Decimal||
|sequence|Int32||
|shipQuantity|Decimal||
|shipmentDate|Date||
|shippedQuantity|Decimal||
|taxCode|String||
|taxPercent|Decimal||
|totalTaxAmount|Decimal||
|unitOfMeasureId|Guid||
|unitPrice|Decimal||

## Response

If successful, this method returns a `200 OK` response code and an updated [salesOrderLine](../resources/dynamics-salesorderline.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_salesorderline"
}-->

```http
PATCH https://graph.microsoft.com/beta/financials/companies/{id}/salesOrders/{id}/salesOrderLines/{id}
Content-type: application/json

{
  "documentId": "documentId-value",
  "sequence": 99,
  "itemId": "itemId-value",
  "accountId": "accountId-value",
  "lineType": "lineType-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.salesOrderLine"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "documentId": "documentId-value",
  "sequence": 99,
  "itemId": "itemId-value",
  "accountId": "accountId-value",
  "lineType": "lineType-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update salesorderline",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->