---
title: "Delete identityProvider"
description: "Delete an identityProvider."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Delete identityProvider
Namespace: microsoft.graph

Delete a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD.

In Azure AD B2C, delete a [socialIdentityProvider](../resources/socialidentityprovider.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /identity/identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following is an example of the request.



<!-- {
  "blockType": "request",
  "name": "delete_identityprovider"
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/identity/identityProviders/{id}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
