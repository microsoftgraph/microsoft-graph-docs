---
title: "identityApiConnector resource type"
description: "Represents API connectors in an Azure Active Directory tenant."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# identityApiConnector resource type

Namespace: microsoft.graph

Represents API connectors in an Azure Active Directory (Azure AD) tenants.

An API connector used in your Azure AD External Identities self-service sign-up user flows allows you to call an API during the execution of the user flow. An API connector provides the information needed to call an API including an endpoint URL and authentication. An API connector can be used at a specific step in a user flow to affect the execution of the user flow. For example, the API response can block a user from signing up, show an input validation error, or overwrite user collected attributes.

Use the [b2xIdentityUserFlow](b2xidentityuserflow.md) API to use an API connector from an External Identities self-service sign-up user flow.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identityapiconnector-list.md)|[identityApiConnector](../resources/identityapiconnector.md) collection| Get a list of API connectors|
|[Create](../api/identityapiconnector-create.md)|[identityApiConnector](identityapiconnector.md)|Create a new API connector. |
|[Get](../api/identityapiconnector-get.md)|[identityApiConnector](identityapiconnector.md)|Read the properties of an [identityApiConnector](../resources/identityapiconnector.md) object.|
|[Update](../api/identityapiconnector-update.md)|[identityApiConnector](identityapiconnector.md)|Update the properties of an API connector.|
|[Upload client certificate](../api/identityapiconnector-uploadclientcertificate.md)|[identityApiConnector](identityapiconnector.md)|Upload a client certificate to use for authentication.|
|[Delete](../api/identityapiconnector-delete.md)|None|Delete an API connector.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The randomly generated identifier of the API connector. |
|displayName|String| The name of the API connector. |
|targetUrl|String| The URL of the API endpoint to call. |
|authenticationConfiguration|[apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md)|The object which describes the authentication configuration details for calling the API. Basic and PKCS 12 client certificate are supported.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityApiConnector",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.identityApiConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "targetUrl": "String",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.apiAuthenticationConfigurationBase"
  }
}
```
