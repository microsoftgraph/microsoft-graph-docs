---
title: "rolloutSettings resource type"
description: "Settings controlling how the service deploys an update over time."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# rolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling how the service deploys an update over time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned.|
|devicesPerOffer|Int32|	Specifies the number of devices that are offered at the same time. Has no effect when **endDateTime** is set. When **endDateTime** and **devicesPerOffer** are both not set, all devices in the deployment are offered content at the same time.|
|durationBetweenOffers|String|Specifies duration between each set of devices being offered the update. Has an effect when **endDateTime** or **devicesPerOffer** are defined. Default value is `P1D` (1 day).|
|endDateTime|DateTimeOffset|Specifies the date before which all devices currently in the deployment are offered the update. Devices added after this date are offered immediately. When **endDateTime** and **devicesPerOffer** are both not set, all devices in the deployment are offered content at the same time.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.rolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.rolloutSettings",
  "startDateTime": "String",
  "durationBetweenOffers": "String",
  "endDateTime": "String (timestamp)",
  "devicesPerOffer": "Integer"
}
```

