---
title: "featureUpdateReference resource type"
description: "Represents Windows 10 feature update content."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# featureUpdateReference resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Windows 10 feature update content.

In a deployment, the same feature update reference could result in devices receiving different update revisions, but the content is considered contextually equivalent for all devices in the deployment.

Inherits from [windowsUpdateReference](../resources/windowsupdates-windowsupdatereference.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|version|String|Specifies a feature update by version.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.featureUpdateReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateReference",
  "version": "String"
}
```

