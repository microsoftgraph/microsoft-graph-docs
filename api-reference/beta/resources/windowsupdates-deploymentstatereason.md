---
title: "deploymentStateReason resource type"
description: "A reason for a particular deployment state."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentStateReason resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A reason for a particular deployment state.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|microsoft.graph.windowsUpdates.deploymentStateReasonValue|Specifies a reason for the deployment state. Possible values are: `scheduledByOfferWindow`, `offeringByRequest`, `pausedByRequest`, `pausedByMonitoring`. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentStateReason",
  "value": "String"
}
```

