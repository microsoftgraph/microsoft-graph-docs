---
title: "excludeTarget resource type"
description: "Represents the users or groups of users that are excluded from a policy."
author: "mjsantani"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# excludeTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the users or groups of users that are excluded from a policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object identifier of an Azure AD user or group.|
|targetType|authenticationMethodTargetType|The type of the authentication method target. Possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.excludeTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.excludeTarget",
  "id": "String (identifier)",
  "targetType": "String"
}
```
