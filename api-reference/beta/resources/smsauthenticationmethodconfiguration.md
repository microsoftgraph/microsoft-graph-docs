---
title: "smsAuthenticationMethodConfiguration resource type"
description: "Represents a Text Message authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# smsAuthenticationMethodConfiguration resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Text Message authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/smsauthenticationmethodconfiguration-get.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md)|Read the properties and relationships of a smsAuthenticationMethodConfiguration object.|
|[Update](../api/smsauthenticationmethodconfiguration-update.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md)|Update the properties of a smsAuthenticationMethodConfiguration object.|
|[Delete](../api/smsauthenticationmethodconfiguration-delete.md)|None|Reverts the smsAuthenticationMethodConfiguration object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method policy identifier.|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md) collection|A collection of users or groups who are enabled to use the authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.smsAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.smsAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

