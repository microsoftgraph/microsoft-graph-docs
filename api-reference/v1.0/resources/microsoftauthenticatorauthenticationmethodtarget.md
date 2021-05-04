---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of users or groups enabled to use Microsoft Authenticator authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type
Namespace: microsoft.graph

A collection of users or groups enabled to use [Microsoft Authenticator authentication methods policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md) in Azure AD.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of an Azure AD user or group.|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|Determines which types of notifications can be used for sign-in. Possible values are: `any`, `deviceBasedPush` (passwordless only), `push`.|
|featureSettings|authenticatorAppFeatureSettings|Determines what additional settings should be applied to Microsoft Authenticator. Possible values are: `null`, `requireNumberMatching` (Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications).|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. *Not supported*. |
|shownContext|authenticatorAppContextType|(Private Preview) Determines what types of context about the sign-in should be shown to the user in the body of the notification. Possible values are: `location`, `app`.|
|targetType|authenticationMethodTargetType| Possible values are: `user`, `group`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "authenticationMode": "String",
  "shownContext": "String",
  "featureSettings": "String"
}
```
