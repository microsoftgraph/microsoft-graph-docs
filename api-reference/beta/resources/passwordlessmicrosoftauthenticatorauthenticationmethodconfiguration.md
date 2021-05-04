---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type"
description: "Represents a Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

> [!CAUTION]
> The Microsoft Authenticator Passwordless Phone Sign-in authentication method policy API is deprecated and stopped returning results on December 31, 2020. Please use the new [Microsoft Authenticator authentication method policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-get.md) (deprecated)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Read the properties and relationships of a passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Update](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-update.md) (deprecated) |[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Update the properties of a passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Delete](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-delete.md) (deprecated)|None|Reverts the passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object to its default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method policy identifier.|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) collection|A collection of users or groups who are enabled to use the authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "includeTargets": [ { "@odata.type": "microsoft.graph.authenticationMethodTarget" } ]
}
```
