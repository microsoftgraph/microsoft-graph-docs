---
title: "windowsUpdateReference resource type"
description: "Represents specific Windows 10 update content."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# windowsUpdateReference resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific Windows 10 update content.

In a deployment, the same Windows update reference could result in devices receiving different update revisions, but the content is considered contextually equivalent for all devices in the deployment.

All Windows update references exist as one of the following derived types: [featureUpdateReference](../resources/windowsupdates-featureupdatereference.md) and [expeditedQualityUpdateReference](../resources/windowsupdates-expeditedqualityupdatereference.md).

Inherits from [softwareUpdateReference](../resources/windowsupdates-softwareupdatereference.md). Base type for [featureUpdateReference](../resources/windowsupdates-featureupdatereference.md) and [qualityUpdateReference](../resources/windowsupdates-qualityupdatereference.md).

This is an abstract type.

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.windowsUpdateReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.windowsUpdateReference"
}
```

