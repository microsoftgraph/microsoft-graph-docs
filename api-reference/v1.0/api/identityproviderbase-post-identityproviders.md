---
title: "Create identityProvider"
description: "Create a new identityProvider object."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Create identityProvider
Namespace: microsoft.graph

Create a new [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD.

In Azure AD B2C create a new [socialIdentityProvider](../resources/socialidentityprovider.md) object.

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
POST /identity/identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD.

In Azure AD B2C provide a JSON representation of [socialIdentityProvider](../resources/socialidentityprovider.md) object.

All the properties listed in the following table are required.

### socialIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns `****`.|
|displayName|String|The display name of the identity provider.|
|identityProviderType|String|For a B2B scenario, possible values: `Google`, `Facebook`. For a B2C scenario, possible values: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`.|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|

## Response

If successful, this method returns a `201 Created` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in the response body for both Azure AD and Azure AD B2C tenants.

If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Example 1: Create a specific social identity provider (Azure AD and Azure AD B2C)

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_socialidentityprovider_from_identityproviderbase"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/identity/identityProviders
Content-type: application/json

{
  "@odata.type": "microsoft.graph.socialIdentityProvider",
  "displayName": "Login with Amazon",
  "identityProviderType": "Amazon",
  "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
  "clientSecret": "000000000000"
}
```

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.socialIdentityProvider"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.socialIdentityProvider",
    "id": "Amazon-OAUTH",
    "displayName": "Login with Amazon",
    "identityProviderType": "Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "000000000000"
}
```
