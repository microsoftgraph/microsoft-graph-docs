---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftAuthenticatorAuthenticationMethodTargets](../api/microsoftauthenticatorauthenticationmethodtarget-list.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) collection|Get a list of the [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) objects and their properties.|
|[Create microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-create.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Create a new [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Get microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-get.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Update microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-update.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Update the properties of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Delete microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-delete.md)|None|Deletes a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md)|
|isNumberMatchingRequired|Boolean|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean",
  "shownContext": "String",
  "isNumberMatchingRequired": "Boolean"
}
```

