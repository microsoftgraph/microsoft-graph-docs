---
title: "deploymentState resource type"
description: "Describes and controls the current state of a deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# deploymentState resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes and controls the current state of a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reasons|[microsoft.graph.windowsUpdates.deploymentStateReason](../resources/windowsupdates-deploymentstatereason.md) collection|Specifies the reasons the deployment has its state value. Read-only.|
|requestedValue|microsoft.graph.windowsUpdates.requestedDeploymentStateValue|Specifies the requested state of the deployment. Supports a subset of the values for **requestedDeploymentStateValue**. Possible values are: `none`, `paused`.|
|value|microsoft.graph.windowsUpdates.deploymentStateValue|Specifies the state of the deployment. Supports a subset of the values for **deploymentStateValue**. Possible values are: `scheduled`, `offering`, `paused`. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentState",
  "value": "String",
  "reasons": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason"
    }
  ],
  "requestedValue": "String",
}
```

