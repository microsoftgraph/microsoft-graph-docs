---
title: "authenticationListener resource type"
description: "Defines the listener to evaluate during an authentication event."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a listener to be evaluate when an authentication event happens in an authentication experience. An authenticationListener is abstract and is the base class of the various types of listeners you can evaluate during an authentication event. 

You can create an [invokeUserFlowListener](../resources/invokeuserflowlistener.md) for the onSignUpStart event.. This associates an application with a user flow, therefore enabling a [self-service sign up](https://docs.microsoft.com/azure/active-directory/external-identities/self-service-sign-up-overview) process. Once an application is associated with a user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onSignUpStart](../api/authenticationeventspolicy-list-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md) collection|Get the collection of authenticationListener resources supported by the onSignupStart event.|
|[Create authenticationListener](../api/authenticationeventspolicy-post-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md)|Create a new authenticationListener object for the onSignupStart event.|
|[Update authenticationListener](../api/authenticationlistener-update.md)|[authenticationListener](../resources/authenticationlistener.md)|Update the specified listener defined for the onSignupStart event in the authentication pipeline.|
|[Put authenticationListener](../api/authenticationlistener-put.md)|[authenticationListener](../resources/authenticationlistener.md)|Replace the properties of an authenticationListener object.|
|[Get authenticationListener](../api/authenticationlistener-get.md)|[authenticationListener](../resources/authenticationlistener.md)|Get the specified listener defined for the onSignupStart event in the authentication pipeline.|
|[Delete authenticationListener](../api/authenticationlistener-delete.md)|None|Delete the specified listener defined for the onSignupStart event in the authentication pipeline.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the action.|
|priority|Int32|The priority of the listener. Determines the order of evaluation when an event has multiple listeners. The priority is evaluated from low to high.|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the listener is evaluated. This is currently limited to evaluations based on application the user is authenticating to.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationListener",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "priority": "Integer",
  "sourceFilter": {
    "@odata.type": "microsoft.graph.authenticationSourceFilter"
  }
}
```
