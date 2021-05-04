---
title: "authenticationFlowsPolicy resource type"
description: "Represents the policy configuration of self-service sign-up experience at a tenant level that lets external users request to sign up for approval. "
author: "linkhp"
localization_priority: Priority
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationFlowsPolicy resource type

Namespace: microsoft.graph

Represents the [policy configuration of self-service sign-up experience](../resources/selfservicesignupauthenticationflowconfiguration.md) at a tenant level that lets external users request to sign up for approval. It contains information, such as the identifier, display name, and description, and indicates whether self-service sign-up is enabled for the policy.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get authentication flows policy](../api/authenticationflowspolicy-get.md)|authenticationFlowsPolicy|Get the authentication flows policy configuration.|
|[Update authentication flows policy](../api/authenticationflowspolicy-update.md)|authenticationFlowsPolicy|Update the authentication flows policy configuration.|

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|id|String| Inherited property. The identifier of the authentication flows policy. Optional. Read-only.
|displayName|String| Inherited property. The human-readable name of the policy. Optional. Read-only.|
|description|String|Inherited property. A description of the policy. Optional. Read-only.|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md) |Contains [selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md) settings that convey whether self-service sign-up is enabled or disabled. Optional. Read-only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationFlowsPolicy",
  "openType": false
}
-->

``` json
{
   "id":"String (identifier)",
   "displayName":"String",
   "description":"String",
   "selfServiceSignUp":{
      "@odata.type":"#microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
   }
}
```
