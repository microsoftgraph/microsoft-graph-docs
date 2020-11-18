---
title: "microsoftAuthenticatorAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftAuthenticatorAuthenticationMethodConfigurations](../api/microsoftauthenticatorauthenticationmethodconfiguration-list.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) collection|Get a list of the [microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) objects and their properties.|
|[Create microsoftAuthenticatorAuthenticationMethodConfiguration](../api/microsoftauthenticatorauthenticationmethodconfiguration-create.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md)|Create a new [microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Get microsoftAuthenticatorAuthenticationMethodConfiguration](../api/microsoftauthenticatorauthenticationmethodconfiguration-get.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Update microsoftAuthenticatorAuthenticationMethodConfiguration](../api/microsoftauthenticatorauthenticationmethodconfiguration-update.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md)|Update the properties of a [microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[Delete microsoftAuthenticatorAuthenticationMethodConfiguration](../api/microsoftauthenticatorauthenticationmethodconfiguration-delete.md)|None|Deletes a [microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/microsoftauthenticatorauthenticationmethodconfiguration-list-includetargets.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) collection|Get the microsoftAuthenticatorAuthenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/microsoftauthenticatorauthenticationmethodconfiguration-post-includetargets.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Create a new microsoftAuthenticatorAuthenticationMethodTarget object.|
|[Get includeTargets](../api/microsoftauthenticatorauthenticationmethodconfiguration-get-microsoftauthenticatorauthenticationmethodtarget.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Update includeTargets](../api/microsoftauthenticatorauthenticationmethodconfiguration-update-includetargets.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/microsoftauthenticatorauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

