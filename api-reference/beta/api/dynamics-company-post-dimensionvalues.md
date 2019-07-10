---
title: "Create dimensionValue"
description: "Use this API to create a new dimensionValue."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "apiPageType"
---

# Create dimensionValue

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new dimensionValue.

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
POST /financials/companies/{id}/dimensionValues
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [dimensionValue](../resources/dimensionvalue.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [dimensionValue](../resources/dynamics-dimensionvalue.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_dimensionvalue_from_company"
}-->

```http
POST https://graph.microsoft.com/beta/financials/companies/{id}/dimensionValues
Content-type: application/json

{
  "code": "code-value",
  "displayName": "displayName-value",
  "lastModifiedDateTime": "datetime-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.dimensionValue"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "code": "code-value",
  "displayName": "displayName-value",
  "lastModifiedDateTime": "datetime-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create dimensionValue",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->