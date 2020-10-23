---
title: "b2xIdentityUserFlow resource type"
description: "Represents a user flow within an Azure Active Directory tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "jkdouglas"
---

# b2xIdentityUserFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user flow within an Azure Active Directory tenant.

User flows are used to enable a [self-service sign up](/azure/active-directory/external-identities/self-service-sign-up-overview) experience for guest users on an application. User flows define the experience the end user sees while signing up, including which [identity providers](/azure/active-directory/external-identities/identity-providers) they can use to authenticate, along with which attributes are collected as part of the sign up process.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List user flows](../api/identitycontainer-list-b2xuserflows.md)|b2xIdentityUserFlow collection|Retrieve all B2X user flows.|
|[Get user flow](../api/b2xidentityuserflow-get.md)|b2xIdentityUserFlow|Retrieve properties of a B2X user flow.|
|[Create user flow](../api/identitycontainer-post-b2xuserflows.md)|b2xIdentityUserFlow|Create a new B2X user flow.|
|[Delete user flow](../api/b2xidentityuserflow-delete.md)|None|Delete a B2X user flow.|
|[List identity providers](../api/b2xidentityuserflow-list-identityproviders.md)|[identityProvider](../resources/identityProvider.md) collection|Retrieve all identity providers in a B2X user flow.|
|[Add identity provider](../api/b2xidentityuserflow-post-identityproviders.md)|None|Add an identity provider to a B2X user flow.|
|[Remove identity provider](../api/b2xidentityuserflow-delete-identityproviders.md)|None|Remove an identity provider from a B2X user flow.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The name of the user flow. This is a required value and is immutable after it's created. The name will be prefixed with the value of `B2X_1_` after creation.|
|userFlowType|String|The type of user flow. For self-service sign up user flows, the value can only be `signUpOrSignIn` and cannot be modified after creation.|
|userFlowTypeVersion|Single|The version of the user flow. For B2X user flows, the version is always `1`.|

## Relationships

| Relationship       | Type  |Description|
|:---------------|:--------|:----------|
|identityProviders|[identityProvider](../resources/identityprovider.md) collection|The identity providers included in the user flow.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2xIdentityUserFlow",
  "optionalProperties": [],
  "keyProperty": "id"
} -->

```json
{
    "id": "String (identifier)",
    "userFlowType": "String",
    "userFlowTypeVersion": "Single",
    "identityProviders": [{"@odata.type": "microsoft.graph.identityProvider"}]
}
```