---
title: "featureRolloutPolicy resource type"
description: "Represents a feature rollout policy associated with a directory object."
localization_priority: Normal
author: "keylimesoda"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# featureRolloutPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a feature rollout policy associated with a directory object. Creating a feature rollout policy helps tenant administrators to pilot features of Azure AD with a specific group before enabling features for entire organization. This minimizes the impact and helps administrators to test and rollout authentication related features gradually.

The following are limitations of feature rollout:

- Each feature supports a maximum of 10 groups.
- The **appliesTo** field only supports groups.
- Dynamic groups and nested groups are not supported.

The following are pre-requisites for each of the features that are currently suported for rollout using this rollout policy.

### Passthrough Authentication

* Identify a server running Windows Server 2012 R2 or later where you want the [PassthroughAuthentication](/azure/active-directory/hybrid/how-to-connect-pta) Agent to run. Ensure that the server is domain-joined, can authenticate selected users with Active Directory, and can communicate with Azure AD on outbound ports / URLs.
* [Download](https://aka.ms/getauthagent) & install the Microsoft Azure AD Connect Authentication Agent on the server.
* To enable high availability, install additional Authentication Agents on other servers as described [here](/azure/active-directory/hybrid/how-to-connect-pta-quick-start#step-4-ensure-high-availability).
* Ensure that you have configured your [Smart Lockout](/azure/active-directory/authentication/howto-password-smart-lockout) settings appropriately. This is to ensure that your users’ on-premises Active Directory accounts don’t get locked out by bad actors.

### SeamlessSso

* Enable [SeamlessSso](/azure/active-directory/hybrid/how-to-connect-sso) for the AD forests based on [these](/azure/active-directory/hybrid/tshoot-connect-sso#manual-reset-of-the-feature) instructions.

### PasswordHashSync

* Enable [PasswordHashSync](/azure/active-directory/hybrid/whatis-phs) from the “Optional features” page in Azure AD Connect.

### EmailAsAlternateId

* Associate alternate email  with user accounts.

## Methods

| Method                                                                         | Return Type                                     | Description                                                               |
|:-------------------------------------------------------------------------------|:------------------------------------------------|:--------------------------------------------------------------------------|
| [List featureRolloutPolicies](../api/directory-list-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Retrieve a list of featureRolloutPolicy objects.                          |
| [Get featureRolloutPolicy](../api/featurerolloutpolicy-get.md)                 | [featureRolloutPolicy](featurerolloutpolicy.md) | Retrieve the properties and relationships of featurerolloutpolicy object. |
| [Create featureRolloutPolicy](../api/directory-post-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Create a new featureRolloutPolicy object.                                 |
| [Update featureRolloutPolicy](../api/featurerolloutpolicy-update.md)           | [featureRolloutPolicy](featurerolloutpolicy.md) | Update the properties of featurerolloutpolicy object.                     |
| [Delete featureRolloutPolicy](../api/featurerolloutpolicy-delete.md)           | None                                            | Delete a featureRolloutPolicy object.                                     |
| [Assign appliesTo](../api/featurerolloutpolicy-post-appliesto.md)              | [directoryObject](directoryobject.md)           | Assign a directoryObject to feature rollout.                              |
| [Remove appliesTo](../api/featurerolloutpolicy-delete-appliesto.md)            | None                                            | Remove a directoryObject from feature rollout.                            |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|A description for this feature rollout policy.|
|displayName|String|The display name for this  feature rollout policy.|
|feature|stagedFeatureName| Possible values are: `passthroughAuthentication`, `seamlessSso`, `passwordHashSync`, `unknownFutureValue`.|
|id|String| Read-only.|
|isAppliedToOrganization|Boolean|Indicates whether this feature rollout policy should be applied to the entire organization.|
|isEnabled|Boolean|Indicates whether the feature rollout is enabled.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| Nullable. Specifies a list of directoryObjects that feature is enabled for.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.featureRolloutPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "feature": "string",
  "id": "String (identifier)",
  "isAppliedToOrganization": false,
  "isEnabled": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "featureRolloutPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


