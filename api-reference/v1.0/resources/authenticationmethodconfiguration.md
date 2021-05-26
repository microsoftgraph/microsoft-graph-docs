---
title: "authenticationMethodConfigurations"
description: "authenticationMethodConfigurations object."
author: "mmcla"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# authenticationMethodConfiguration resource type
Namespace: microsoft.graph

Represents an authentication method policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The policy name.|
|state|authenticationMethodState|The state of the policy. Possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodConfiguration",
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
