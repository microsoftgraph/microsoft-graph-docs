---
title: "List identityProviders"
description: "Retrieve a list of identityProviderbase objects."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# List identityProviders
Namespace: microsoft.graph

Retrieve a list of collection of object inherited from  [identityProviderBase](../resources/identityproviderbase.md).

For an Azure AD tenant it can be [socialIdentityProviders](../resources/socialidentityprovider.md) and/or [builtinIdentityProviders](../resources/builtinidentityprovider.md) objects.

For an Azure AD B2C tenant it can be [socialIdentityProviders](../resources/socialidentityprovider.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global Administrator
* External Identity Provider Administrator
* External ID user flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md) and/or [builtinIdentityProvider](../resources/builtinidentityprovider.md) objects in the response body for an Azure AD tenant.

For an Azure AD B2C tenant this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md) objects in the response body.

## Example

### Example 1: List all identity providers configured in an Azure AD tenant

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/identityProviders
```

### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/identityProviders",
   "value":[
      {
         "@odata.type": "microsoft.graph.builtInIdentityProvider",
         "id": "MSASignup-OAUTH",
         "identityProviderType": "MicrosoftAccount",
         "displayName": "MicrosoftAccount"
      },
      {
         "@odata.type": "#microsoft.graph.socialIdentityProvider",
         "id": "Facebook-OAUTH",
         "displayName": "Facebook",
         "identityProviderType": "Facebook",
         "clientId": "test",
         "clientSecret": "******"
      }
   ]
}
```

### Example 2: List all identityProvider objects configured in an Azure AD B2C tenant

### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/identityProviders
```

### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/identityProviders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.socialIdentityProvider",
            "id": "LinkedIn-OAUTH",
            "displayName": "linkedin",
            "identityProviderType": "LinkedIn",
            "clientId": "866xc0qtyy00ih",
            "clientSecret": "******"
        }
    ]
}

```
