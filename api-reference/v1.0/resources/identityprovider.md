---
title: "identityProvider resource type"
description: "Represents an Azure Active Directory (Azure AD) identity provider."
localization_priority: Priority
author: "namkedia"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# identityProvider resource type (deprecated)
Namespace: microsoft.graph

[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Represents an Azure Active Directory (Azure AD) identity provider. The identity provider can be **Microsoft**, **Google**, **Facebook**, **Amazon**,  **LinkedIn**, or **Twitter**. The following Identity Providers are in Preview: **Weibo**, **QQ**, **WeChat**, **GitHub** and any OpenID Connect supported providers. 

Configuring an identity provider in your Azure AD B2C tenant enables users to:

* Sign up and sign in using a social account in a consumer application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.
* Link an existing local account to a social account in a consumer application. For example, a user has created a username and password (local account) in the application. The user later decides to link the existing local account to their Facebook account so they can sign in using Facebook.

Configuring an identity provider in your Azure AD tenant enables future B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityProvider](../api/identityprovider-get.md) |identityProvider|Read properties of an existing identityProvider.|
|[Create identityProvider](../api/identityprovider-post-identityproviders.md)|identityProvider|Create a new identityProvider.|
|[Update identityProvider](../api/identityprovider-update.md)|None|Update an existing identityProvider.|
|[Delete identityProvider](../api/identityprovider-delete.md)|None|Delete an existing identityProvider.|
|[List identityProviders](../api/identityprovider-list.md)|identityProvider collection|List all identityProviders configured in a tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:--------|
|clientId|String|The client ID for the application. This is the client ID obtained when registering the application with the identity provider. Required. Not nullable.|
|clientSecret|String|The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return `****`.  Required. Not nullable.|
|id|String|The ID of the identity provider.|
|name|String|The display name of the identity provider. Not nullable.|
|type|String|The identity provider type is a required field. For B2B scenario: `Google`, `Facebook`. For B2C scenario: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`, `OpenIDConnect`. Not nullable.|

### Where to get the client ID and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client ID and client secret can be passed to [create identityProvider](../api/identityprovider-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityProvider"
} -->

```json
{
    "id": "String",
    "type": "String",
    "name": "String",
    "clientId": "String",
    "clientSecret": "String"
}
```