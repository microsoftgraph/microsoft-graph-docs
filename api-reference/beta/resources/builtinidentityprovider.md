---
title: "builtInIdentityProvider resource type"
description: "Represents built-in identity providers in an Azure Active Directory tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# builtInIdentityProvider resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents built-in identity providers with [External Identities](/azure/active-directory/external-identities/) for an Azure Active Directory tenant.

For Azure AD B2B scenarios in an Azure AD tenant, the built in identity provider type can be an Azure Active Directory(AAD), Microsoft account(MSA) or email one-time passcode (EmailOTP).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityprovider-list.md)|[identityProvider](identityprovider.md) collection|Retrieve all built-in identity providers configured in a tenant.|
|[Get](../api/identityprovider-get.md) |builtInIdentityProvider|Retrieve properties of an built-in identity provider.|
|[Update](../api/identityprovider-get.md) |builtInIdentityProvider|Update properties of an built-in identity provider.|
|[List available provider types](../api/identityprovider-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the identity provider.|
|displayName|String|The display name of the identity provider.|
|identityProviderType|String|The identity provider type. For a B2B scenario, possible values: `AADSignup`, `MicrosoftAccount`, `EmailOTP`. Required.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.builtInIdentityProvider"
} -->

```json
{
    "id": "String",
    "identityProviderType": "String",
    "displayName": "String",
}
```