---
title: "governancePermission resource type"
description: "Represents the access permission that a governanceSubject has to a specific governanceResource.  "
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# governancePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the access permission that a [governanceSubject](../resources/governancesubject.md) has to a specific [governanceResource](../resources/governanceresource.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accessLevel|String|The access level. Valid values: ``None``, ``UserRead``, ``AdminRead``, and ``AdminReadWrite``.|
|isActive|Boolean|Indicate if the requestor has any active role assignment for the access level.|
|isEligible|Boolean|Indicate if the requestor has any eligible role assignment for the access level.|

## JSON representation

Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governancePermission"
}-->
```json
{
  "accessLevel": "String",
  "isActive": true,
  "isEligible": true
}

```


