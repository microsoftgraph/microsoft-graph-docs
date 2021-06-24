---
title: "invokeUserFlowListener resource type"
description: "A listener that is used to invoke a user flow during an authentication event."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# invokeUserFlowListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can create an [invokeUserFlowListener](../resources/invokeuserflowlistener.md) for the onSignUpStart event. This associates an application with a user flow, which enables [external identities self-service sign up](/azure/active-directory/external-identities/self-service-sign-up-overview) for the application. Once an application is associated with a user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.

Inherits from the abstract base type [authenticationListener](../resources/authenticationlistener.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the action. Inherited from [authenticationListener](../resources/authenticationlistener.md).|
|priority|Int32|The priority of the action that is used to determine one out of multiple applicable actions. Inherited from [authenticationListener](../resources/authenticationlistener.md).|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the listener is executed. Inherited from [authenticationListener](../resources/authenticationlistener.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userFlow|[b2xIdentityUserFlow](../resources/b2xidentityuserflow.md)|The user flow that is invoked when this action executes.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.invokeUserFlowListener",
  "baseType": "microsoft.graph.authenticationListener",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "priority": "Integer",
  "sourceFilter": {
    "@odata.type": "microsoft.graph.authenticationSourceFilter"
  },
  "userFlow": {
    "@odata.type": "microsoft.graph.b2xIdentityUserFlow"
  }
}
```
