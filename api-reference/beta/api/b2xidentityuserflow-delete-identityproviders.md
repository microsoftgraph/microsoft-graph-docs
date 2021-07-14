---
title: "Delete identityProvider from b2xIdentityUserFlow (deprecated)"
description: "Delete an identityProvider from a b2xIdentityUserFlow. (deprecated)"
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Delete identityProvider from b2xIdentityUserFlow (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Delete an identity provider from a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object. For self-service sign up user flows, the values can be `Google-OAUTH` or `Facebook-OAUTH`.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application| IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identity/b2xUserFlows/{id}/identityProviders/{id}/$ref
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_b2xUserFlows_identityProviders_2"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/identity/b2xUserFlows/B2X_1_PartnerSignUp/identityProviders/Facebook-OAUTH/$ref
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
