---
title: "Add a userFlowIdentityProvider"
description: "Add an identityProvider to a b2cIdentityUserFlow."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Add a userFlowIdentityProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an identity providers in a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application| IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External ID user flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/b2cUserFlows/{userflow-id}/userflowIdentityProviders/$ref
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation with the `id` of the [identityProvider](../resources/identityproviderbase.md) you want to add. For more information about identity providers available for user flows, see the [identityProviders](../resources/identityproviderbase.md) resource.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error is returned with the specific error details.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_b2cuserflows_userflowIdentityProviders"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/b2cUserFlows/B2C_test_signin_signup/userflowIdentityProviders/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/identity/identityProviders/{id}"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
