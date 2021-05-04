---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of users or groups enabled to use Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of users or groups enabled to use Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy](../resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration.md) in Azure AD.

> [!CAUTION]
> The Microsoft Authenticator Passwordless Phone Sign-in authentication method policy API is deprecated and stopped returning results on December 31, 2020. Please use the new [Microsoft Authenticator authentication method policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method.|
|shownContext|authenticatorAppContextType|Possible values are: `location`, `app`.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`.|
|useForSignIn|Boolean|Determines whether the authentication method can be used to sign in to Azure AD.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean",
  "shownContext": "String"
}
```
