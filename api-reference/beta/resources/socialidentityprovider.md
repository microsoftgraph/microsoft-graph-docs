---
title: "socialIdentityProvider resource type"
description: "Represents social identity providers in an Azure Active Directory tenant and an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# socialIdentityProvider resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents social identity providers with [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory tenant and an Azure AD B2C tenant.

This type will inherit from [identityProviderBase](../resources/identityproviderbase.md).

For Azure AD B2B scenarios in an Azure AD tenant, the identity provider type can be Google or Facebook.

Configuring an identity provider in your Azure AD tenant enables new Azure AD B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C tenant, the identity provider type can be Microsoft, Google, Facebook, Amazon, LinkedIn or Twitter. The following identity providers are in preview: Weibo, QQ, WeChat, and GitHub.

Configuring an identity provider in your Azure AD B2C tenant enables users to sign up and sign in using a social account supported provider in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all identity providers configured in a tenant including the social identity providers.|
|[Create](../api/identityproviderbase-post-identityproviders.md)|socialidentityprovider |Create a new social identity provider.|
|[Get](../api/identityproviderbase-get.md) |socialidentityprovider |Retrieve properties of a social identity provider.|
|[Update](../api/identityproviderbase-update.md)|None|Update a social identity provider.|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete a social  identity provider.|
|[List available provider types](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types available in the tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider. Required.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns "\*\*\*\*". Required.|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|identityProviderType|String|For a B2B scenario, possible values: `Google`, `Facebook`. For a B2C scenario, possible values: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`. Required.|

### Where to get the client identifier and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client identifier and client secret can be passed to [create identityProvider](../api/identityproviderbase-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign-in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.socialIdentityProvider"
} -->

```json
{
    "id": "String",
    "identityProviderType": "String",
    "displayName": "String",
    "clientId": "String",
    "clientSecret": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "socialIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
