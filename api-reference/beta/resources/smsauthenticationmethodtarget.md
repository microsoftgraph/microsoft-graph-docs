---
title: "smsAuthenticationMethodTarget resource type"
description: "A collection of users or groups enabled to use Text Message authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# smsAuthenticationMethodTarget resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of users or groups enabled to use [Text Message authentication methods policy](../resources/smsAuthenticationMethodConfiguration.md) in Azure AD.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. **Not supported**.|
|isUsableForSignIn|Boolean|Determines if the users or groups can use this authentication method to sign in to Azure AD. The value is always `true`.|
|targetType|authenticationMethodTargetType| Possible values are: `user`, `group`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.smsAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.smsAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "isUsableForSignIn": "Boolean"
}
```
