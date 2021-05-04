---
title: "Update identityProvider"
description: "Update properties of an identityProvider."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Update identityProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD.

For Azure AD B2C, update the properties  of a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) or an [appleIdentityProvider](../resources/appleidentityprovider.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application| IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD tenant.

In Azure AD B2C, provide a JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) or an [appleIdentityProvider](../resources/appleidentityprovider.md) object.

### socialIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns "\*\*\*\*".|
|displayName|String|The display name of the identity provider.|

### openIdConnectIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on **responseType**. <ul><li>When **responseType** is `code`, a secret is required for the auth code exchange.</li><li>When **responseType** is `id_token` the secret is not required because there is no code exchange. The id_token is returned directly from the authorization response.</li></ul>|
|displayName|String|The display name of the identity provider.|
|domainHint|String|The domain hint can be used to skip directly to the sign in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.|
|claimsMapping|[claimsMapping](../resources/claimsmapping.md)|After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping.|
|metadataUrl|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in `.well-known/openid-configuration`. Provide the metadata URL for the OpenID Connect identity provider you add.|
|responseMode|String|The response mode defines the method used to send data back from the custom identity provider to Azure AD B2C. Possible values: `form_post`, `query`.|
|responseType|String|The response type describes the type of information sent back in the initial call to the authorization_endpoint of the custom identity provider. Possible values: `code` , `id_token` , `token`.|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|

### appleManagedIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|developerId|String|The Apple Developer identifier.|
|serviceId|String|The Apple Developer identifier.|
|keyId|String|The Apple Key identifier.|
|certificateData|String|The certificate data which is a long string of text from the certificate, can be null.|

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Example 1: Update a specific **social identity provider** (Azure AD or Azure AD B2C)

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_socialidentityprovider"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/identityProviders/Amazon-OAUTH
Content-type: application/json
Content-length: 41

{
  "clientSecret": "1111111111111"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-socialidentityprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-socialidentityprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-socialidentityprovider-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-socialidentityprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Update a specific **OpenID Connect identity provider** (only for Azure AD B2C)

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_openidconnectprovider"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/identityProviders/OIDC-V1-Nam_AD_Test-3e393390-ed2d-4794-97f6-5c999ccc61f7
Content-type: application/json
Content-length: 41

{
  "responseType": "id_token"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-openidconnectprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-openidconnectprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-openidconnectprovider-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-openidconnectprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 3: Update a specific **Apple identity provider** (only for Azure AD B2C)

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_appleidentityprovider"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/identityProviders/Apple-Managed-OIDC
Content-type: application/json
Content-length: 41

{
  "displayName": "Apple"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-appleidentityprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-appleidentityprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-appleidentityprovider-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-appleidentityprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
