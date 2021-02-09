---
title: "Create identityProvider"
description: "Create a new identityProvider"
localization_priority: Priority
author: "Nickgmicrosoft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Create identityProvider

Namespace: microsoft.graph

Create a new [identityProvider](../resources/identityprovider.md) by specifying display name, identityProvider type, client ID, and client secret.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Not supported.|

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of [identityProvider](../resources/identityprovider.md) object. All the properties listed in the following table are required.

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client ID for the application. This is the client ID obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application. This is the client secret obtained when registering the application with the identity provider.|
|name|String|The display name of the identity provider.|
|type|String|The identity provider type. It must be one of the following values for B2C Scenarios: <ul><li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook<li/>GitHub<li/>Twitter<li/>Weibo<li/>QQ<li/>WeChat</ul>For B2B it can only be Google|

## Response

If successful, this method returns `201 Created` response code and [identityProvider](../resources/identityprovider.md) object in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example creates an **identityProvider**.

##### Request

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/v1.0/identityProviders
Content-type: application/json

{
    "name": "Login with Amazon",
    "type": "Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "000000000000"
}
```

##### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "Amazon-OAUTH",
    "name": "Login with Amazon",
    "type": "Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "*****"
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create identityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



