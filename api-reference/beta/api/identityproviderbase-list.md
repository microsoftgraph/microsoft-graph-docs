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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [identityProviders](../resources/identityproviderbase.md) objects.

For an Azure AD tenant it can be a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md) objects.

For an Azure AD B2C tenant it can be a [socialIdentityProviders](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) or [appleIdentityProvider](../resources/appleidentityprovider.md) objects.

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

If successful, this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md) objects in the response body for an Azure AD tenant.

For an Azure AD B2C tenant it can be a [socialIdentityProviders](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) or [appleIdentityProvider](../resources/appleidentityprovider.md) objects in the response body.

## Example

### Example 1: List all **identityProvider** configured in an Azure AD tenant

### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/identityProviders
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "value":[
      {
         "@odata.type": "microsoft.graph.builtInIdentityProvider",
         "id": "MicrosoftAccount",
         "identityProviderType": "MicrosoftAccount",
         "displayName": "MicrosoftAccount"
      },
      {
         "@odata.type": "microsoft.graph.socialIdentityProvider",
         "identityProviderType": "Google",
         "displayName": "Google",
         "clientId": "string",
         "clientSecret": "string"
      }
   ]
}
```

### Example 2: List all **identityProvider** configured in an Azure AD B2C tenant

### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase"
}
-->

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "value":[
      {
         "@odata.type": "microsoft.graph.socialIdentityProvider",
         "identityProviderType": "Google",
         "displayName": "Google",
         "clientId": "string",
         "clientSecret": "string"
      },
      {
         "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
         "id": "OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a",
         "displayName": "Login with the Contoso identity provider",
         "identityProviderType": "OpenIDConnect",
         "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
         "clientSecret": "*****",
         "claimsMapping": {
            "userId": "myUserId",
            "givenName": "myGivenName",
            "surname": "mySurname",
            "email": "myEmail",
            "displayName": "myDisplayName"
         },
         "domainHint": "contoso",
         "metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
         "responseMode": "form_post",
         "responseType": "code",
         "scope": "openid"
      },
      {
        "@odata.type": "microsoft.graph.appleManagedIdentityProvider",
        "id": "Apple-Managed-OIDC",
        "displayName": "Apple",
        "developerId": "ABC1D29956",
        "serviceId": "com.microsoft.test.b2c.tt.client",
        "keyId": "01P657F9C5",
        "certificateData": null
      }
   ]
}

```