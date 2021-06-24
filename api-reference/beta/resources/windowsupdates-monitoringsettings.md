---
title: "monitoringSettings resource type"
description: "Settings controlling automated monitoring and response in a deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# monitoringSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling automated monitoring and response in a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|monitoringRules|[microsoft.graph.windowsUpdates.monitoringRule](../resources/windowsupdates-monitoringrule.md) collection|Specifies the rules through which monitoring signals can trigger actions on the deployment. Rules are combined using "or".|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.monitoringSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.monitoringSettings",
  "monitoringRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.monitoringRule"
    }
  ]
}
```

