---
title: "authenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationMethodConfigurations](../api/authenticationmethodconfiguration-list.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|Get a list of the [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) objects and their properties.|
|[Create authenticationMethodConfiguration](../api/authenticationmethodconfiguration-post-authenticationmethodconfigurations.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|Create a new [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.|
|[Get authenticationMethodConfiguration](../api/authenticationmethodconfiguration-get.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|Read the properties and relationships of an [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.|
|[Update authenticationMethodConfiguration](../api/authenticationmethodconfiguration-update.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|Update the properties of an [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.|
|[Delete authenticationMethodConfiguration](../api/authenticationmethodconfiguration-delete.md)|None|Deletes an [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|state|authenticationMethodState|**TODO: Add Description**. Possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodConfiguration",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

