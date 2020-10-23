---
title: "openIdConnectProvider resource type"
description: "Represents OpenIDConnect identity providers in an Azure Active Directory B2C tenant."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "namkedia"
---

# openIdConnectProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents OpenID Connect identity providers in an Azure Active Directory B2C tenant. 

Configuring an OpenID Connect provider in B2C tenant enables users to sign up and sign in using their custom identity provider in an application.

Inherits from [identityProvider](../resources/identityprovider.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityprovider-list.md)|identityProvider collection|Retrieve all identity providers configured in a tenant.|
|[Create](../api/identityprovider-post-identityproviders.md)|identityProvider|Create a new OpenID Connect identity provider.|
|[Get](../api/identityprovider-get.md) |identityProvider|Retrieve properties of an OpenID Connect identity provider.|
|[Update](../api/identityprovider-update.md)|None|Update an OpenID Connect identity provider.|
|[Delete](../api/identityprovider-delete.md)|None|Delete an OpenID Connect identity provider.|
|[List available provider types](../api/identityprovider-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client ID for the application obtained when registering the application with the identity provider. Inherited from [identityProvider](../resources/identityprovider.md). This is a required property.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on responseType. In the case of responseType = code, a secret is required for the auth code exchange, but in the case of responseType = id_token it is not required because there is no code exchange, the id_token is returned directly from the authorization response.This is write-only. A read operation will return "\*\*\*\*". Inherited from [identityProvider](../resources/identityprovider.md).|
|id|String|The ID of the identity provider. It is a required property and is read only after creation.|
|name|String|The display name of the identity provider. It is a required property and is read only after creation.|
|type|String|The identity provider type. It must be `OpenIDConnect`.It is a required property and is read only after creation.|
|claimsMapping|[claimsMapping](../resources/claimsmapping.md)|After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping. It is a required property.|
|domainHint|String|The domain hint can be used to skip directly to the sign in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.|
|metadataUrl|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration . For the OpenID Connect identity provider you are looking to add, you will need to provide the metadata URL. It is a required property and is read only after creation.|
|responseMode|String|The response mode defines the method that should be used to send the data back from the custom identity provider to Azure AD B2C. The following response modes can be used: <ul><li/>`form_post` : This response mode is recommended for best security. The response is transmitted via the HTTP POST method, with the code or token being encoded in the body using the application/x-www-form-urlencoded format.<li/>`query` : The code or token is returned as a query parameter.</ul> It is a required property.|
|responseType|String|The response type describes what kind of information is sent back in the initial call to the authorization_endpoint of the custom identity provider. The following response types can be used:<ul><li/> `code` : As per the authorization code flow, a code will be returned back to Azure AD B2C. Azure AD B2C proceeds to call the token_endpoint to exchange the code for the token.<li/> `id_token` : An ID token is returned back to Azure AD B2C from the custom identity provider. <li/>`token` : An access token is returned back to Azure AD B2C from the custom identity provider. (This value is not supported by Azure AD B2C at the moment)</ul> It is a required property.|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users are not able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended separated by space. For more details about the scope limitations see [RFC6749 Section 3.3](https://tools.ietf.org/html/rfc6749#section-3.3). It is a required property.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.openIdConnectProvider"
} -->

```json
{
  "id": "String",
  "name": "String",
  "type": "String",
  "clientId": "String",
  "clientSecret": "String",
  "claimsMapping": {
      "@odata.type": "#microsoft.graph.claimsMapping",
      "userId": "String",
      "givenName": "String",
      "surname": "String",
      "email": "String",
      "displayName": "String"
  },
  "domainHint": "String",
  "metadataUrl": "String",
  "responseMode": "String",
  "responseType": "String",
  "scope": "String"
}
```


