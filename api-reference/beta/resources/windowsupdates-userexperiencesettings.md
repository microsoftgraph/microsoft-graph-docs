---
title: "userExperienceSettings resource type"
description: "Settings controlling the user's update experience on a device."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# userExperienceSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling the user's update experience on a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|daysUntilForcedReboot|Int32|Specifies the number of days after an update is installed, during which the user of the device can control when the device restarts.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.userExperienceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.userExperienceSettings",
  "daysUntilForcedReboot": "Integer"
}
```

