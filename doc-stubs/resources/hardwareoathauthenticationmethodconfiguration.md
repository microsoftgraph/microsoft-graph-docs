---
title: "hardwareOathAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# hardwareOathAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hardwareOathAuthenticationMethodConfigurations](../api/hardwareoathauthenticationmethodconfiguration-list.md)|[hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) collection|Get a list of the [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) objects and their properties.|
|[Create hardwareOathAuthenticationMethodConfiguration](../api/hardwareoathauthenticationmethodconfiguration-create.md)|[hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md)|Create a new [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.|
|[Get hardwareOathAuthenticationMethodConfiguration](../api/hardwareoathauthenticationmethodconfiguration-get.md)|[hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md)|Read the properties and relationships of a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.|
|[Update hardwareOathAuthenticationMethodConfiguration](../api/hardwareoathauthenticationmethodconfiguration-update.md)|[hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md)|Update the properties of a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.|
|[Delete hardwareOathAuthenticationMethodConfiguration](../api/hardwareoathauthenticationmethodconfiguration-delete.md)|None|Deletes a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/hardwareoathauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/hardwareoathauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/hardwareoathauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/hardwareoathauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/hardwareoathauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

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
  "@odata.type": "microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

