---
title: "servicePrincipalIdentity resource type"
description: "Models a service principal identity."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# servicePrincipalIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Models a service principal identity.

Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String| The application identifier of the service principal. |
|displayName|String| The display name of the service principal identity. Inherited from [identity](../resources/identity.md). |
|id|String| The identifier of the service principal identity. Inherited from [identity](../resources/identity.md). |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.servicePrincipalIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "appId": "String"
}
```
