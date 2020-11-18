---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List passwordlessMicrosoftAuthenticatorAuthenticationMethodTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodtarget-list.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) collection|Get a list of the [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) objects and their properties.|
|[Create passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../api/passwordlessmicrosoftauthenticatorauthenticationmethodtarget-create.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Create a new [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|
|[Get passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../api/passwordlessmicrosoftauthenticatorauthenticationmethodtarget-get.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Read the properties and relationships of a [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|
|[Update passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../api/passwordlessmicrosoftauthenticatorauthenticationmethodtarget-update.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Update the properties of a [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|
|[Delete passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../api/passwordlessmicrosoftauthenticatorauthenticationmethodtarget-delete.md)|None|Deletes a [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md)|
|isRegistrationRequired|Boolean|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md)|
|shownContext|authenticatorAppContextType|**TODO: Add Description**. Possible values are: `location`, `app`.|
|targetType|authenticationMethodTargetType|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md). Possible values are: `user`, `group`, `unknownFutureValue`.|
|useForSignIn|Boolean|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean",
  "shownContext": "String"
}
```

