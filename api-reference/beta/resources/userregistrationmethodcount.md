---
title: "userRegistrationMethodCount resource type"
description: "Number of users registered for an authentication method."
author: "danielwood95"
localization_priority: Normal
ms.prod: "reports"
doc_type: resourcePageType
---

# userRegistrationMethodCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Number of users registered for an authentication method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|String|Name of authentication method.|
|userCount|Int64|Number of users registered.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationMethodCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationMethodCount",
  "authenticationMethod": "String",
  "userCount": "Integer"
}
```
