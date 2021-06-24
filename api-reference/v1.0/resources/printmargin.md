---
title: printMargin resource type
description: Specifies the margin widths to use when printing.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printMargin resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Specifies the margin widths to use when printing.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|top|Int32|The margin in microns from the top edge.|
|bottom|Int32|The margin in microns from the bottom edge.|
|right|Int32|The margin in microns from the right edge.|
|left|Int32|The margin in microns from the left edge.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printMargin"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printMargin",
  "top": "Integer",
  "bottom": "Integer",
  "right": "Integer",
  "left": "Integer"
}
```

