---
title: "approval resource type"
description: "The approval object associated with a userConsentRequest."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# approval resource type

Namespace: microsoft.graph

Represents the approval object for decisions associated with a request.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier of the approval decision.|
|stages|[approvalStage](../resources/approvalstage.md) collection|A collection of stages in the approval decision. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|stages|[approvalStage](../resources/approvalstage.md) collection|A collection of stages in the approval decision. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)",
  "stages": [{
        "@odata.type": "#microsoft.graph.approvalStage"
    }]
}
```
