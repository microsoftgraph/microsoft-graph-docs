---
title: "temporaryAccessPassAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# temporaryAccessPassAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List temporaryAccessPassAuthenticationMethodConfigurations](../api/temporaryaccesspassauthenticationmethodconfiguration-list.md)|[temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) collection|Get a list of the [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) objects and their properties.|
|[Create temporaryAccessPassAuthenticationMethodConfiguration](../api/temporaryaccesspassauthenticationmethodconfiguration-create.md)|[temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Create a new [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.|
|[Get temporaryAccessPassAuthenticationMethodConfiguration](../api/temporaryaccesspassauthenticationmethodconfiguration-get.md)|[temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Read the properties and relationships of a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.|
|[Update temporaryAccessPassAuthenticationMethodConfiguration](../api/temporaryaccesspassauthenticationmethodconfiguration-update.md)|[temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Update the properties of a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.|
|[Delete temporaryAccessPassAuthenticationMethodConfiguration](../api/temporaryaccesspassauthenticationmethodconfiguration-delete.md)|None|Deletes a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/temporaryaccesspassauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/temporaryaccesspassauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/temporaryaccesspassauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/temporaryaccesspassauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/temporaryaccesspassauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultLength|Int32|**TODO: Add Description**|
|defaultLifetimeInMinutes|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|isUsableOnce|Boolean|**TODO: Add Description**|
|maximumLifetimeInMinutes|Int32|**TODO: Add Description**|
|minimumLifetimeInMinutes|Int32|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "defaultLifetimeInMinutes": "Integer",
  "defaultLength": "Integer",
  "minimumLifetimeInMinutes": "Integer",
  "maximumLifetimeInMinutes": "Integer",
  "isUsableOnce": "Boolean"
}
```

