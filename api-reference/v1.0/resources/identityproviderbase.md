---
title: "identityProviderBase resource type"
description: "Represents identity providers in an Azure Active Directory tenant and an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# identityProviderBase resource type
Namespace: microsoft.graph

Represents identity providers with [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory tenant and an Azure AD B2C tenant.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|identityProviderBase collection|Retrieve all identity providers configured in a tenant.|
|[List available provider types](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The ID of the identity provider.|
|displayName|String|The display name of the identity provider.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityProviderBase"
} -->

```json
{
    "id": "String",
    "displayName": "String"
}
```
