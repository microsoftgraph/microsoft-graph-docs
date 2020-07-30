---
title: "Delete conditionalAccessPolicy"
description: "Delete a conditionalAccessPolicy."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Delete conditionalAccessPolicy

Namespace: microsoft.graph

Delete a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                    |
|:--------------------------------------|:---------------------------------------------------------------|
| Delegated (work or school account)     | Policy.Read.All and Policy.ReadWrite.ConditionalAccess |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.Read.All and Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identity/conditionalAccess/policies/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_conditionalaccesspolicy"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies/{id}
```

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
