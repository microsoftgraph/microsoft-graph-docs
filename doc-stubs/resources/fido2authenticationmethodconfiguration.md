---
title: "fido2AuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# fido2AuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fido2AuthenticationMethodConfiguration](../api/fido2authenticationmethodconfiguration-list.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) collection|Get a list of the [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) objects and their properties.|
|[Create fido2AuthenticationMethodConfiguration](../api/fido2authenticationmethodconfiguration-create.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Create a new [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.|
|[Get fido2AuthenticationMethodConfiguration](../api/fido2authenticationmethodconfiguration-get.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Read the properties and relationships of a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.|
|[Update fido2AuthenticationMethodConfiguration](../api/fido2authenticationmethodconfiguration-update.md)|[fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md)|Update the properties of a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.|
|[Delete fido2AuthenticationMethodConfiguration](../api/fido2authenticationmethodconfiguration-delete.md)|None|Deletes a [fido2AuthenticationMethodConfiguration](../resources/fido2authenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/fido2authenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/fido2authenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/fido2authenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/fido2authenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/fido2authenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|isAttestationEnforced|Boolean|**TODO: Add Description**|
|isSelfServiceRegistrationAllowed|Boolean|**TODO: Add Description**|
|keyRestrictions|[fido2KeyRestrictions](../resources/fido2keyrestrictions.md)|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.fido2AuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "isSelfServiceRegistrationAllowed": "Boolean",
  "isAttestationEnforced": "Boolean",
  "keyRestrictions": {
    "@odata.type": "microsoft.graph.fido2KeyRestrictions"
  }
}
```

