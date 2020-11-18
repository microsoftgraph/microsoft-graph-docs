---
title: "qrAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# qrAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List qrAuthenticationMethodConfigurations](../api/qrauthenticationmethodconfiguration-list.md)|[qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) collection|Get a list of the [qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) objects and their properties.|
|[Create qrAuthenticationMethodConfiguration](../api/qrauthenticationmethodconfiguration-create.md)|[qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md)|Create a new [qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) object.|
|[Get qrAuthenticationMethodConfiguration](../api/qrauthenticationmethodconfiguration-get.md)|[qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md)|Read the properties and relationships of a [qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) object.|
|[Update qrAuthenticationMethodConfiguration](../api/qrauthenticationmethodconfiguration-update.md)|[qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md)|Update the properties of a [qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) object.|
|[Delete qrAuthenticationMethodConfiguration](../api/qrauthenticationmethodconfiguration-delete.md)|None|Deletes a [qrAuthenticationMethodConfiguration](../resources/qrauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/qrauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/qrauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/qrauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/qrauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/qrauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

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
  "@odata.type": "microsoft.graph.qrAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

