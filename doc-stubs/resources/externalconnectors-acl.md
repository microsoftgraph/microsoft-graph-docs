---
title: "acl resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# acl resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessType|accessType|**TODO: Add Description**. Possible values are: `grant`, `deny`, `unknownFutureValue`.|
|identitySource|identitySourceType|**TODO: Add Description**. Possible values are: `azureActiveDirectory`, `external`, `unknownFutureValue`.|
|type|aclType|**TODO: Add Description**. Possible values are: `user`, `group`, `everyone`, `everyoneExceptGuests`, `unknownFutureValue`.|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.acl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.acl",
  "type": "String",
  "value": "String",
  "accessType": "String",
  "identitySource": "String"
}
```

