---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List passwordlessMicrosoftAuthenticatorAuthenticationMethodConfigurations](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-list.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) collection|Get a list of the [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) objects and their properties.|
|[Create passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-create.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Create a new [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Get passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-get.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Read the properties and relationships of a [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Update passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-update.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Update the properties of a [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Delete passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-delete.md)|None|Deletes a [passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-list-includetargets.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) collection|Get the passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-post-includetargets.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Create a new passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget object.|
|[Get includeTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-get-passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Read the properties and relationships of a [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|
|[Update includeTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-update-includetargets.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete a [passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

