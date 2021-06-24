---
title: "updateManagementEnrollment resource type"
description: "Represents enrollment into management by the service of a certain update category."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# updateManagementEnrollment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents enrollment into management by the service of a certain update category.

Inherits from [updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|updateCategory|microsoft.graph.windowsUpdates.updateCategory|The category of updates that the service manages. Supports a subset of the values for **updateCategory**. Possible values are: `feature`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updateManagementEnrollment",
  "updateCategory": "String"
}
```

