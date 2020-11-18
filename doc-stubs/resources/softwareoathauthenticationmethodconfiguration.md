---
title: "softwareOathAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# softwareOathAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List softwareOathAuthenticationMethodConfigurations](../api/softwareoathauthenticationmethodconfiguration-list.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) collection|Get a list of the [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) objects and their properties.|
|[Create softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-create.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Create a new [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Get softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-get.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Read the properties and relationships of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Update softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-update.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Update the properties of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Delete softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-delete.md)|None|Deletes a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/softwareoathauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/softwareoathauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/softwareoathauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/softwareoathauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/softwareoathauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

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
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

