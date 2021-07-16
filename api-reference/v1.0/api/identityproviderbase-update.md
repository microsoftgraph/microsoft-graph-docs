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

Update the properties of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD.

For Azure AD B2C, update the properties  of a [socialIdentityProvider](../resources/socialidentityprovider.md) object.

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

In the request body, provide the OData type and the JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Azure AD tenant.

In Azure AD B2C, provide the OData type and the JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md) object.

### socialIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The identifier for the client application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns "\*\*\*\*".|
|displayName|String|The display name of the identity provider.|

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Example 1: Update a specific **social identity provider** (Azure AD or Azure AD B2C)

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_socialidentityprovider"
}
-->

``` http
PATCH https://graph.microsoft.com/v1.0/identity/identityProviders/Amazon-OAUTH
Content-type: application/json

{
  "@odata.type": "microsoft.graph.socialIdentityProvider",
  "clientSecret": "1111111111111"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```