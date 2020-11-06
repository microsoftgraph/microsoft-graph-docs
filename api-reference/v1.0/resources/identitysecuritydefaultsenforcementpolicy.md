---
title: "identitySecurityDefaultsEnforcementPolicy resource type"
description: "Represents the Azure Active Directory security defaults policy. Security defaults contain preconfigured security settings that protect against common attacks."
localization_priority: Normal
author: "rohinigoyal1"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# identitySecurityDefaultsEnforcementPolicy resource type

Namespace: microsoft.graph

Represents the Azure Active Directory [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) policy. Security defaults contain preconfigured security settings that protect against common attacks.

Inherits from [policyBase](../resources/policybase.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/identitysecuritydefaultsenforcementpolicy-get.md) | [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md) | Read the properties of an **identitySecurityDefaultsEnforcementPolicy** object. |
| [Update](../api/identitysecuritydefaultsenforcementpolicy-update.md) | [identitySecurityDefaultsEnforcementPolicy](identitysecuritydefaultsenforcementpolicy.md) | Update an **identitySecurityDefaultsEnforcementPolicy** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|Description for this policy. Read-only.|
|displayName|String|Display name for this policy. Read-only.|
|id|String|Identifier for this policy. Read-only.|
|isEnabled|Boolean|If set to true, Azure Active Directory security defaults is enabled for the tenant.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.identitySecurityDefaultsEnforcementPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identitySecurityDefaultsEnforcementPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->