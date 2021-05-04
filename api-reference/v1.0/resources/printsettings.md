---
title: printSettings resource type
description: Represents tenant-wide settings for the Universal Print service.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printSettings resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents tenant-wide settings for the Universal Print service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|documentConversionEnabled|Boolean|Specifies whether document conversion is enabled for the tenant. If document conversion is enabled, Universal Print service will automatically convert documents into a format compatible with the printer (xps to pdf) when needed.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printSettings",
  "documentConversionEnabled": "Boolean"
}
```

