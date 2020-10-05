---
title: "Delete q permissionGrantPoliciy"
description: "Delete a permissionGrantPolicy object."
localization_priority: Normal
doc_type: "apiPageType"
ms.prod: "microsoft-identity-platform"
author: "psignoret"
---

# Delete permissionGrantPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [permissionGrantPolicy](../resources/permissiongrantpolicy.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Policy.ReadWrite.PermissionGrant |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Policy.ReadWrite.PermissionGrant |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /policies/permissionGrantPolicies/{id}
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request to delete a custom permission grant policy.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "delete_permissiongrantpolicy"
}-->

```msgraph-interactive
DELETE https://graph.microsoft.com/beta/policies/permissionGrantPolicies/my-custom-consent-policy
```

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPolicy"
} -->

```http
HTTP/1.1 204 No Content
```
