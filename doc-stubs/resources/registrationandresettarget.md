---
title: "registrationAndResetTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# registrationAndResetTarget resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|minAuthMethodsToRegister|Int32|**TODO: Add Description**|
|minAuthMethodsToReset|Int32|**TODO: Add Description**|
|targetType|authenticationMethodTargetType|**TODO: Add Description**. Possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.registrationAndResetTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.registrationAndResetTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "minAuthMethodsToRegister": "Integer",
  "minAuthMethodsToReset": "Integer"
}
```

