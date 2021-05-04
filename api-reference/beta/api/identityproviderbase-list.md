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

Retrieve a list of collection of object inherited from  [identityProviderBase](../resources/identityproviderbase.md).

For an Azure AD tenant it can be [socialIdentityProviders](../resources/socialidentityprovider.md) and/or [builtinIdentityProviders](../resources/builtinidentityprovider.md) objects.

For an Azure AD B2C tenant it can be [socialIdentityProviders](../resources/socialidentityprovider.md), [openIdConnectIdentityProviders](../resources/openidconnectidentityprovider.md) and/or [appleIdentityProvider](../resources/appleidentityprovider.md) objects.

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

For an Azure AD B2C tenant this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) and/or [appleIdentityProvider](../resources/appleidentityprovider.md) objects in the response body.

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
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-identityproviderbase-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

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
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/identityProviders",
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

### Example 2: List all **identityProvider** configured in an Azure AD B2C tenant

### Request
The following is an example of the request.

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
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/identityProviders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.socialIdentityProvider",
            "id": "LinkedIn-OAUTH",
            "displayName": "linkedin",
            "identityProviderType": "LinkedIn",
            "clientId": "866xc0qtyy00ih",
            "clientSecret": "******"
        },
        {
            "@odata.type": "#microsoft.graph.openIdConnectIdentityProvider",
            "id": "OIDC-V1-rtt_AD_Test-3e393390-ed2d-4794-97f6-5c1a1ccc61f7",
            "displayName": "OIDC AD Test",
            "clientId": "fe1b3476-rdca-4bef-b321-076fde19750b",
            "clientSecret": "******",
            "scope": "openid",
            "metadataUrl": "https://login.microsoftonline.com/sashawho.onmicrosoft.com/.well-known/openid-configuration",
            "domainHint": "",
            "responseType": "code",
            "responseMode": "form_post",
            "claimsMapping": {
                "userId": "oid",
                "displayName": "name",
                "givenName": "given_name",
                "surname": "family_name",
                "email": "unique_email"
            }
        },
        {
            "@odata.type": "#microsoft.graph.appleManagedIdentityProvider",
            "id": "Apple-Managed-OIDC",
            "displayName": "Sign in with Apple",
            "developerId": "UBF8T346G9",
            "serviceId": "com.microsoft.aad.b2c.iuyt.client",
            "keyId": "99P6DD87C4",
            "certificateData": "******"
        }
    ]
}

```
