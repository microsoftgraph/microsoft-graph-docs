---
title: "homeRealmDiscoveryPolicy resource type"
description: "Represents a policy to control Azure Active Directory authentication behavior for federated users."
localization_priority: Normal
author: "hpsin"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# homeRealmDiscoveryPolicy resource type

Namespace: microsoft.graph

Represents a policy to control Azure Active Directory authentication behavior for federated users, in particular for auto-acceleration and user authentication restrictions in federated domains. You can set **homeRealmDiscoveryPolicy** for all service principals in your organization, or for specific service principals in your organization. For more scenario and policy details, see [Configure Azure AD sign in behavior for an application by using a Home Realm Discovery policy](/azure/active-directory/manage-apps/configure-authentication-for-federated-users-portal) as well as [Sign-in to Azure Active Directory using email as an alternate login ID](/azure/active-directory/authentication/howto-authentication-use-email-signin).

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List homeRealmDiscoveryPolicies](../api/homerealmdiscoverypolicy-list.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Read properties and relationships of homeRealmDiscoveryPolicies objects. |
| [Create homeRealmDiscoveryPolicy](../api/homerealmdiscoverypolicy-post-homerealmdiscoverypolicies.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Create a homeRealmDiscoveryPolicy object. |
| [Get homeRealmDiscoveryPolicy](../api/homerealmdiscoverypolicy-get.md) | [homeRealmDiscoveryPolicy](homerealmdiscoverypolicy.md) | Read properties and relationships of a homeRealmDiscoveryPolicy object. |
| [Update homeRealmDiscoveryPolicy](../api/homerealmdiscoverypolicy-update.md) | None | Update a homeRealmDiscoveryPolicy object. |
| [Delete homeRealmDiscoveryPolicy](../api/homerealmdiscoverypolicy-delete.md) | None | Delete a homeRealmDiscoveryPolicy object. |
| [List appliesTo](../api/homerealmdiscoverypolicy-list-appliesto.md) | [directoryObject](directoryobject.md) collection | Get the list of directoryObjects that this policy has been applied to. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Unique identifier for this policy. Read-only.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required.|
|description|String| Description for this policy.|
|displayName|String| Display name for this policy. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|


### Properties of a home realm discovery policy definition
The properties below form the JSON object that represents a token lifetime policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. An example is shown below in JSON format:

<!-- {
  "blockType": "ignored"
}-->
``` json
"definition": [
    "{\"HomeRealmDiscoveryPolicy\":
     {\"AccelerateToFederatedDomain\":true,
      \"PreferredDomain\":\"federated.example.edu\",
      \"AlternateIdLogin\":{\"Enabled\":true}}}"
  ]
```

| Property	   | Type	|Description| 
|:---------------|:--------|:----------|
|AccelerateToFederatedDomain|Boolean| Set to `true` for auto-acceleration (bypass home realm discovery). If `true` and there is only one verified and federated domain in the tenant, then users will be taken straight to the federated identity provider (such as ADFS) for sign in. If `true` and there is more than one verified domain in the tenant, **PreferredDomain** must be specified. Optional.|
|PreferredDomain|String| Specifies a domain to accelerate sign-in to. It can be omitted if the tenant has only one federated domain. If it is omitted, and there is more than one verified federated domain, this policy has no effect. Required if **AccelerateToFederatedDomain** is `true`.|
|AllowCloudPasswordValidation|Boolean| Set to `true` to allow an application to authenticate a federated user by presenting username/password credentials directly to the Azure Active Directory token endpoint. Only works if Password Hash Sync is enabled. Optional.|
|AlternateIdLogin| Json |Set to {"Enabled": true} to allow Azure AD sign-in using email as [an alternate login ID](/azure/active-directory/authentication/howto-authentication-use-email-signin). Only works when **IsOrganizationDefault** is set to `true`. Optional.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.homeRealmDiscoveryPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "homeRealmDiscoveryPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
