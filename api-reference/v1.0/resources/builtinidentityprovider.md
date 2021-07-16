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

Represents built-in identity providers with [External Identities](/azure/active-directory/external-identities/) for an Azure Active Directory tenant.

For Azure AD B2B scenarios in an Azure AD tenant, the built in identity provider type can be an Azure Active Directory(AAD), Microsoft account(MSA) or email one-time passcode (EmailOTP).

This type inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all identity providers configured in a tenant including the built-in identity providers.|
|[Get](../api/identityproviderbase-get.md) |builtInIdentityProvider|Retrieve properties of an built-in identity provider.|
|[List available provider types](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types available in the tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-03-30 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "builtinIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
