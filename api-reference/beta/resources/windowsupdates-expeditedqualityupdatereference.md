---
title: "expeditedQualityUpdateReference resource type"
description: "Represents Windows 10 quality update content to expedite."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# expeditedQualityUpdateReference resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Windows 10 quality update content to expedite.

In a deployment, the same expedited quality update reference could result in devices receiving different update revisions, but the content is considered contextually equivalent for all devices in the deployment.

Inherits from [qualityUpdateReference](../resources/windowsupdates-qualityupdatereference.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|microsoft.graph.windowsUpdates.qualityUpdateClassification|Specifies the classification of the referenced content. Supports a subset of the values for **qualityUpdateClassification**. Default value is `security`. Possible values are: `security`. Inherited from [qualityUpdateReference](../resources/windowsupdates-qualityupdatereference.md).|
|equivalentContent|microsoft.graph.windowsUpdates.equivalentContentOption|Specifies other content to consider as equivalent. Supports a subset of the values for **equivalentContentOption**. Default value is `latestSecurity`. Possible values are: `latestSecurity`.|
|releaseDateTime|DateTimeOffset|Specifies a quality update with the given **classification** by its publish date (i.e. the last update published on the specified date). Any devices with an update that was published prior to the **releaseDateTime** will receive an expedited quality update. Inherited from [qualityUpdateReference](../resources/windowsupdates-qualityupdatereference.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.expeditedQualityUpdateReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.expeditedQualityUpdateReference",
  "classification": "String",
  "releaseDateTime": "String (timestamp)",
  "equivalentContent": "String"
}
```

