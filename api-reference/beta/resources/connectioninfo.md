---
title: "connectionInfo resource type"
description: "The connectionInfo object defines the connection information that is used to communicate with a resource."
author: "hanki-microsoft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# connectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connectionInfo object defines the resource locator that is used to communicate with a resource in Azure AD Entitlement Management.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The endpoint that is used by Entitlement Management to communicate with the access package resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectionInfo",
  "url": "String"
}
```
