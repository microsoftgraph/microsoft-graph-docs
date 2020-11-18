---
title: "passwordAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# passwordAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List passwordAuthenticationMethodConfigurations](../api/passwordauthenticationmethodconfiguration-list.md)|[passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) collection|Get a list of the [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) objects and their properties.|
|[Create passwordAuthenticationMethodConfiguration](../api/passwordauthenticationmethodconfiguration-create.md)|[passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md)|Create a new [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.|
|[Get passwordAuthenticationMethodConfiguration](../api/passwordauthenticationmethodconfiguration-get.md)|[passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md)|Read the properties and relationships of a [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.|
|[Update passwordAuthenticationMethodConfiguration](../api/passwordauthenticationmethodconfiguration-update.md)|[passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md)|Update the properties of a [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.|
|[Delete passwordAuthenticationMethodConfiguration](../api/passwordauthenticationmethodconfiguration-delete.md)|None|Deletes a [passwordAuthenticationMethodConfiguration](../resources/passwordauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/passwordauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/passwordauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/passwordauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/passwordauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/passwordauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
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
  "@odata.type": "microsoft.graph.passwordAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

