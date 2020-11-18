---
title: "authenticationMethodTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authenticationMethodTarget resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationMethodTargets](../api/authenticationmethodtarget-list.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get a list of the [authenticationMethodTarget](../resources/authenticationmethodtarget.md) objects and their properties.|
|[Create authenticationMethodTarget](../api/authenticationmethodtarget-create.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Get authenticationMethodTarget](../api/authenticationmethodtarget-get.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Update authenticationMethodTarget](../api/authenticationmethodtarget-update.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Update the properties of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|
|[Delete authenticationMethodTarget](../api/authenticationmethodtarget-delete.md)|None|Deletes an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|isRegistrationRequired|Boolean|**TODO: Add Description**|
|targetType|authenticationMethodTargetType|**TODO: Add Description**. Possible values are: `user`, `group`, `unknownFutureValue`.|
|useForSignIn|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodTarget",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean"
}
```

