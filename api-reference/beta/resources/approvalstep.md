---
title: "approvalStep resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvalSteps](../api/approvalstep-list.md)|[approvalStep](../resources/approvalstep.md) collection|Get a list of the [approvalStep](../resources/approvalstep.md) objects and their properties.|
|[Create approvalStep](../api/approvalstep-create.md)|[approvalStep](../resources/approvalstep.md)|Create a new [approvalStep](../resources/approvalstep.md) object.|
|[Get approvalStep](../api/approvalstep-get.md)|[approvalStep](../resources/approvalstep.md)|Read the properties and relationships of an [approvalStep](../resources/approvalstep.md) object.|
|[Update approvalStep](../api/approvalstep-update.md)|[approvalStep](../resources/approvalstep.md)|Update the properties of an [approvalStep](../resources/approvalstep.md) object.|
|[Delete approvalStep](../api/approvalstep-delete.md)|None|Deletes an [approvalStep](../resources/approvalstep.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|reviewedBy|[identity](../resources/identity.md)|**TODO: Add Description**|
|reviewedDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewResult|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStep",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalStep",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "assignedToMe": "Boolean",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.identity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String"
}
```

