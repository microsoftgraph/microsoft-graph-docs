---
title: "authenticationFlowsPolicy resource type"
description: "Represents the policy configuration of self-service sign-up experience at a tenant level that lets external users request to sign up for approval. "
author: "linkhp"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationFlowsPolicy resource type


Namespace: microsoft.graph

Represents the [policy configuration of self-service sign-up experience](../resources/selfservicesignupauthenticationflowconfiguration.md) at a tenant level that lets external users request to sign up for approval. It contains information about the ID, display name, and description, and indicates whether self-service sign up is enabled for the policy.

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|id|String| Inherited property. The ID of the authentication flows policy. Optional. Read-only.
|displayName|String| Inherited property. The human-readable name of the policy. This property is not a key. Optional. Read-only.|
|description|String|Inherited property. A description of the policy. This property is not a key. Optional. Read-only.|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md) |Contains [selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md) settings that convey whether self-service sign-up is enabled or disabled. This property is not a key. Optional. Read-only. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationFlowsPolicy",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "selfServiceSignUp": {
    "@odata.type": "#microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
}
```


