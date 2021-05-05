---
title: "authenticationSourceFilter resource type"
description: "Filter based on the source of the authentication which is used to determine whether the listener is executed or not."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationSourceFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Filter based on the source of the authentication that is used to determine whether the listener is evaluated.

The **includeApplications** property can be used to enable self-service sign up on an application in Azure Active Directory. Learn more by reading our documentation for [enabling applications in a self-service sign up user flow](https://docs.microsoft.com/azure/active-directory/external-identities/self-service-sign-up-user-flow#add-applications-to-the-self-service-sign-up-user-flow).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|includeApplications|String collection|Applications to include for evaluation of the [authenticationListener](../resources/authenticationlistener.md). These applications trigger the associated action when used as the client application in the authentication flow. The application identifer is the application's client id.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationSourceFilter"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationSourceFilter",
  "includeApplications": [
    "String"
  ]
}
```
