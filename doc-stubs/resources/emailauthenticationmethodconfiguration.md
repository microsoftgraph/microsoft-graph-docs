---
title: "emailAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# emailAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailAuthenticationMethodConfigurations](../api/emailauthenticationmethodconfiguration-list.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) collection|Get a list of the [emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) objects and their properties.|
|[Create emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-create.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md)|Create a new [emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) object.|
|[Get emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-get.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md)|Read the properties and relationships of an [emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) object.|
|[Update emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-update.md)|[emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md)|Update the properties of an [emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) object.|
|[Delete emailAuthenticationMethodConfiguration](../api/emailauthenticationmethodconfiguration-delete.md)|None|Deletes an [emailAuthenticationMethodConfiguration](../resources/emailauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/emailauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create includeTargets](../api/emailauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|
|[Get includeTargets](../api/emailauthenticationmethodconfiguration-get-authenticationmethodtarget.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update includeTargets](../api/emailauthenticationmethodconfiguration-update-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an includeTargets object.|
|[Delete includeTargets](../api/emailauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowExternalIdToUseEmailOtp|externalEmailOtpState|**TODO: Add Description**. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`.|
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
  "@odata.type": "microsoft.graph.emailAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "allowExternalIdToUseEmailOtp": "String"
}
```

