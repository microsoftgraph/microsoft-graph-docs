---
title: "voiceAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# voiceAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List voiceAuthenticationMethodConfigurations](../api/voiceauthenticationmethodconfiguration-list.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) collection|Get a list of the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) objects and their properties.|
|[Create voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-create.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Create a new [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Get voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-get.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Read the properties and relationships of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Update voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-update.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Update the properties of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Delete voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-delete.md)|None|Deletes a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/voiceauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/voiceauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/voiceauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/voiceauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/voiceauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|isOfficePhoneAllowed|Boolean|**TODO: Add Description**|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.voiceAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "isOfficePhoneAllowed": "Boolean"
}
```

