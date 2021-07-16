---
title: "Delete identityProvider"
description: "Delete an existing identityProvider"
localization_priority: Priority
author: "namkedia"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete identityProvider (deprecated)
Namespace: microsoft.graph

[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Delete an existing [identityProvider](../resources/identityprovider.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code.

## Example

The following example deletes an **identityProvider**.

##### Request

<!-- {
  "blockType": "request",
  "name": "delete-identityprovider"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/identityProviders/Amazon-OAuth
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete identityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

