---
title: "Get identityProvider"
description: "Retrieve the properties of an existing identityProvider"
localization_priority: Priority
author: "namkedia"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get identityProvider (deprecated)
Namespace: microsoft.graph

[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Retrieve the properties of an existing [identityProvider](../resources/identityprovider.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and a JSON representation of the [identityProvider](../resources/identityprovider.md) in the response body.

## Example

The following example retrieves a specific **identityProvider**.

##### Request

<!-- {
  "blockType": "request",
  "name": "get-identityprovider"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityProviders/Amazon-OAuth
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProvider"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "Amazon-OAUTH",
    "type": "Amazon",
    "name": "Login with Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "*****"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get identityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

